import { LightningElement } from 'lwc';

export default class LwcCalculator extends LightningElement {

    numx;
    numy;
    result;
    xChange(event){
        this.numx=event.target.value;
    }
    yChange(event){
         this.numy=event.target.value;
        }
    sum(){
        this.result=parseInt(this.numx)+parseInt(this.numy);
    }
    sub(){
        this.result=parseInt(this.numx)-parseInt(this.numy);
    }
    multi(){
        this.result=parseInt(this.numx)*parseInt(this.numy);
    }
    div(){
        this.result=parseInt(this.numx)/parseInt(this.numy);
}



}