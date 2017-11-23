import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue({
  el: '.js-entriesIndex',
  data: {
    entryInfo: {},
    entryInfoBool: false
  },
  methods: {
    setEntryInfo(id){
      axios.get(`api/entries/${id}.json`)
        .then(res => {
          this.entryInfo = res.data;
          this.entryInfoBool = true;
        });
    }
  }
});
