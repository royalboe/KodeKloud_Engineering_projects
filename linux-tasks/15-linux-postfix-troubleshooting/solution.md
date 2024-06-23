# Solution

## Login to the mail server

```bash
ssh groot@stmail01
```

## Check the postfix

```bash
sudo systemctl status postfix
```

## Check the postfix config file

```bash
sudo vi /etc/postfix/main.cf
```

## Look for the line with localhost and comment it out or delete it

## Start and enable postfix

```bash
sudo systemctl start postfix
sudo systemctl enable postfix
sudo systemctl status postfix
```

