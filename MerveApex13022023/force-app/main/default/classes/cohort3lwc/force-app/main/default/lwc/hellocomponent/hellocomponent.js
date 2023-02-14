import { LightningElement,track } from 'lwc';

export default class Hellocomponent extends LightningElement {

// ESG ve sonrası JS......

@track cardText = {
    title:'track Decorator Example',
    body :' Card body Track Decorator',
    footer :'card Footer example'
  }
    titleChangeHandler(){
      console.log('Before Click1');
     
      console.log(JSON.stringify(this.cardText));
      this.cardText.title = 'button click';
   
      console.log('After Click1');
      console.log(JSON.stringify(this.cardText));
    }
}