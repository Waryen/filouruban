import axios from 'axios'
import React from 'react'

class Newsletter extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            listSubscribers: [],
            newSubscriber: '',
        }

        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    componentDidMount() {
        axios.get(`${this.props.url}/api/subscriber?api_token=${this.props.api}`)
            .then(res => {
                const list = res.data.map(el => el.email)
                if(list) {
                    this.setState({ listSubscribers: list })
                }
            })
    }

    handleChange(e) {
        const value = e.target.value

        this.setState({ newSubscriber: value })
    }

    handleSubmit(e) {
        e.preventDefault()

        const list = this.state.listSubscribers
        const newSub = this.state.newSubscriber
        let check = true

        for(let i = 0; i < list.length; i++) {
            if(list[i] === newSub) {
                check = false
                break
            }
        }

        if(check === true) {
            axios.post(`${this.props.url}/api/subscriber?api_token=${this.props.api}`, {
                email: newSub
            }).then(res => {
                if(res.data === 'ok') {
                    alert('Vous avez été inscrit(e) à la newsletter !')
                }
            })
        } else {
            alert('Vous êtes déja inscrit(e) à la newsletter !')
        }

        axios.get(`${this.props.url}/api/subscriber?api_token=${this.props.api}`)
        .then(res => {
            const list = res.data.map(el => el.email)
            if(list) {
                this.setState({ listSubscribers: list })
            }
        })

        this.setState({ newSubscriber: '' })
    }

    render() {
        return(
            <form method="post" className="newsletter-form" onSubmit={this.handleSubmit}>
                <div>
                    <label htmlFor="newsletter-email">S'abonner à notre newsletter</label>
                    <input type="email" name="email" value={this.state.newSubscriber} id="newsletter-email" required onChange={this.handleChange} />
                </div>
                <div>
                    <button type="submit">S'abonner</button>
                </div>
            </form>
        )
    }
}

export default Newsletter