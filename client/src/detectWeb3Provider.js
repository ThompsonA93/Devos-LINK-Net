if (typeof web3 !== 'undefined') {
    data['web3_status'] = true;
    if (web3.currentProvider.isMetaMask === true) {
      console.log('success');
    } else {
      console.log('detection failed');
    }
  } else {
    console.log('detection failed');
};