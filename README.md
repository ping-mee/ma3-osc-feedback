# ma3-osc-feedback

This guide details how to configure an APC Mini or APC Mini MK2 (for this you will have to do some manual work) controller to work with grandMA3 using the Chataigne mapping application.

Requirements:

    Downloaded repository containing the plugin files and mapping file.
    Chataigne software installed (http://benjamin.kuperberg.fr/chataigne/en).
    APC Mini or APC Mini MK2 controller.

Instructions:

    Download and Extract Files:
        Download the provided repository and extract the contents. You should have two plugin files and a mapping file.

    Install Chataigne:
        Download and install Chataigne software from http://benjamin.kuperberg.fr/chataigne/en following the installation instructions for your operating system.

    Install Chataigne Modules:
        Open Chataigne and go to "File" -> "Community Modules".
        Search for and install the following modules:
            grandMA3
            APC mini (or APC mini MK2 if applicable)

    Load Mapping File:
        Open the downloaded mapping file in Chataigne.

    Configure grandMA3 Remote Host:
        Click on the grandMA3 module in Chataigne.
        Set the "Remote Host IP" to the IP address of your onPC system running grandMA3.

    Remap Buttons for APC Mini MK2 (Optional):
        If you are using an APC Mini MK2, you will need to remap all buttons and faders manually as this file was originally designed for the APC Mini. Chataigne provides a remapping functionality within the module configuration.

    Configure grandMA3 In/Out Ports:
        Open grandMA3 software on your onPC system.
        Go to "Menu" -> "In & Out".
        Create two new input and output ports as shown in the provided image (image not included in this markdown).
        Enable both the created input and output ports.
        Set the IP address and interface for both ports to match the settings used in Chataigne.

Contact:

For any questions regarding this setup process, you can contact the author via:

    Instagram: https://www.instagram.com/ebbe.ba/
    Email: ebbe@ping-mee.de