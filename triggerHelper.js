const checkConfigurable = () => { };

checkConfigurable.register = (hbsInstance) => {
    hbsInstance.registerHelper('checkConfigurable', (listenerParam) => {
        const data = listenerParam.find((params) => params.name === 'listenerConfig')
        return !!data;
    });
}
module.exports = checkConfigurable;