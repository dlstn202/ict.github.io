/* ========== */
/* Temha */
(function () {
    // Selectset
    const selectsetToggle = document.querySelectorAll(".selectset-toggle");
    const selectsetLink = document.querySelectorAll(".selectset-link, selectset-prefer");
    selectsetToggle.forEach((buttonElement) => {
      const clickEventHandler = (event) => {
        event.stopPropagation();
        const button = event.target.closest(".selectset-toggle");
        const buttonParent = button.closest(".selectset");
        buttonParent.classList.toggle("active");
      };
      buttonElement.removeEventListener("click", clickEventHandler);
      buttonElement.addEventListener("click", clickEventHandler);
    });
    selectsetLink.forEach((buttonElement) => {
      const clickEventHandler = (event) => {
        event.stopPropagation();
        const button = event.target.closest(".selectset-link, selectset-prefer");
        //console.log(button.querySelector("span").innerHTML);
        const buttonText = button.querySelector("span").innerHTML;
        const buttonGrandParent = button.closest(".selectset-list");
        const buttonParent = button.closest(".selectset-item");
        const buttonParentSiblings = getSiblings(buttonGrandParent, buttonParent);
        const buttonSelectsetToggle = button
          .closest(".selectset")
          .querySelector(".selectset-toggle");
        buttonParentSiblings.forEach((siblingElement) => {
          siblingElement.querySelector(".selectset-link, selectset-prefer").classList.remove("on");
        });
        //console.log(buttonText);
        //button.classList.toggle("on");
        buttonSelectsetToggle.querySelector("span").innerHTML = buttonText;
        if(buttonText != "직접입력"){
         document.querySelector(".email_domain").value = buttonText;}
         else{
          document.querySelector(".email_domain").value = "";
         }
      };
      buttonElement.removeEventListener("click", clickEventHandler);
      buttonElement.addEventListener("click", clickEventHandler);
    });
    
    function getSiblings(parent, element) {
        return [...parent.children].filter((item) => item !== element);
      }
      function getIndex(element) {
        return [...element.parentNode.children].indexOf(element);
      }
  
  })();
  