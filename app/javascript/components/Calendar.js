import React from "react";
import DayPicker, { DateUtils }  from 'react-day-picker';

export default class Calendar extends React.Component {
	constructor(props) {
		super(props);
        this.handleDayClick = this.handleDayClick.bind(this);
        this.handleSubmitClick = this.handleSubmitClick.bind(this);
        this.state = {
            selectedDays: [],
        };
	}
	
    handleDayClick(day, { selected }) {
		const { selectedDays } = this.state;
      	if (selected) {
        	const selectedIndex = selectedDays.findIndex(selectedDay =>
          	DateUtils.isSameDay(selectedDay, day)
        );
		selectedDays.splice(selectedIndex, 1);
		} 
		else {
        selectedDays.push(day);
      	}
      	this.setState({ selectedDays });
	}
	
    handleSubmitClick(){
        fetch('/calendar', {
            method: "POST",
            body: JSON.stringify({dates: this.state.selectedDays}),
            headers: {
                "Content-Type": "application/json; charset=utf-8"
            }
        })
    }
    render() {
		return (
			<div>
			  <DayPicker
				selectedDays={this.state.selectedDays}
				onDayClick={this.handleDayClick}
			  />
			  <button onClick={this.handleSubmitClick}>Save</button>
			</div>
		);
	}
}