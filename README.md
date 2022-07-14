# EdvoraAssessment

In this project, it was required to make a UI application to present a JSON data as a menu.


## Structures
Firstly, after discovering the JSON data, I decided to make a Category View and Products View.

### Category Struct:
Resposible for presenting **Headline** of the combination of products that have the same Product name

### Products Struct:
Responsible for preseting the **Scrollable** Stack of the products that share the same Product Name

### Filters Struct
Responsible for presenting the Filters UI **not completed yet, only Clear Filters functionality is completed**


## API Manager
Responsible for Making Safe URL Session, Fetching the JSON data and finally creating the Products, Categories Arrays.

## Swift Package Dependencies Used
- SDWebImageSwiftUI: to fetch the Images from the JSON data ( Can't Use AsyncImage Struct as I am using XCode 11.3.1, macOS 10.16)

**In Progress to be completed:

 1- Attaching a scroll pattern (dots) to the Scroll view of products.
 2- Completing the Filters Functionlaity

## Images:

<img src="https://user-images.githubusercontent.com/93882864/178956504-e11b466a-c69a-43a4-95ff-a04e9c6056f1.png" width="414" height="800">
![153404577-9510a1d6-c276-48b7-aa20-ee6cd3c7f170](https://user-images.githubusercontent.com/93882864/178956504-e11b466a-c69a-43a4-95ff-a04e9c6056f1.png)

![153438513-019d1797-38ff-4921-a48b-a5ed34462c3b](https://user-images.githubusercontent.com/93882864/178956522-cbb5101d-a9d7-4ec1-b440-10f08d2c6b57.png)

![153438531-4db8d600-e4d5-4706-9a5b-602549cc0bbd](https://user-images.githubusercontent.com/93882864/178956541-2cfa4959-644b-4a65-87ec-c97ff38afde1.png)

![153438537-0565ceba-f640-4397-86b6-feb9998e58d8](https://user-images.githubusercontent.com/93882864/178956553-a20a9587-7d9a-4220-bc72-b49a1900e718.png)



https://user-images.githubusercontent.com/93882864/153503645-0451db84-68d1-42f0-a64b-81cf5d5d124a.mov
