# Alter Ether-Checker

**Dieses Dokument wurde maschinell aus dem Englischen übersetzt und kann Unterschiede zum Originaldokument aufweisen.**

### Um

Dieses Repository hostet ein Docker-Setup zum Ausführen einer alten Version der Website ethereum.org, insbesondere für die Verwendung des Tools zur Überprüfung des Vorverkaufsguthabens.

Sie können eine dieser Methoden anwenden, um den Container zum Laufen zu bringen:
- [**Methode 1**](#methode-1-erstellen-und-ausführen-über-eine-befehlszeilenschnittstelle) ist für technisch versierte Benutzer gedacht, die eine Befehlszeilenschnittstelle verwenden möchten, um das schnell zu starten Container.
– [**Methode 2**](#methode-2-mit-der-docker-desktop-gui-ausführen) ist für weniger technisch versierte Benutzer gedacht, die eine grafische Benutzeroberfläche zum Starten des Containers verwenden möchten.

### Inhaltsverzeichnis
- [Alter Ether-Checker](#alter-ether-checker)
    - [Um](#um)
    - [Inhaltsverzeichnis](#inhaltsverzeichnis)
  - [Methode 1: Erstellen und Ausführen über eine Befehlszeilenschnittstelle.](#methode-1-erstellen-und-ausführen-über-eine-befehlszeilenschnittstelle)
    - [Wie benutzt man](#wie-benutzt-man)
      - [1. Laden Sie das Repository herunter](#1-laden-sie-das-repository-herunter)
      - [2. Wechseln Sie in das lokale Repository](#2-wechseln-sie-in-das-lokale-repository)
      - [3. Erstellen Sie das Docker-Image](#3-erstellen-sie-das-docker-image)
      - [4. Führen Sie den Docker-Container aus](#4-führen-sie-den-docker-container-aus)
      - [5. Greifen Sie in Ihrem Webbrowser auf die alte Website zu](#5-greifen-sie-in-ihrem-webbrowser-auf-die-alte-website-zu)
  - [Methode 2: Mit der Docker Desktop-GUI ausführen](#methode-2-mit-der-docker-desktop-gui-ausführen)
    - [Voraussetzungen](#voraussetzungen)
    - [Schritte zum Hosten des Tools](#schritte-zum-hosten-des-tools)
      - [Schritt 1: Docker Desktop installieren](#schritt-1-docker-desktop-installieren)
      - [Schritt 2: Ziehen Sie das Docker-Image](#schritt-2-ziehen-sie-das-docker-image)
      - [Schritt 3: Führen Sie den Docker-Container aus](#schritt-3-führen-sie-den-docker-container-aus)
      - [Schritt 4: Greifen Sie auf das Tool zu](#schritt-4-greifen-sie-auf-das-tool-zu)


## Methode 1: Erstellen und Ausführen über eine Befehlszeilenschnittstelle.

### Wie benutzt man

Docker ist Voraussetzung. Falls Sie dies noch nicht getan haben, [installieren Sie Docker](https://docs.docker.com/get-docker/) zuerst.

So erstellen und führen Sie den Docker-Container aus:

#### 1. Laden Sie das Repository herunter
Verwenden Sie eine Eingabeaufforderung und Git, um dieses Repository zu klonen.
„
Git-Klon https://github.com/sbosshardt/old-ether-checker.git
„

Wenn Sie Git nicht auf Ihrem Computer installiert haben (und es lieber nicht installieren möchten), können Sie alternativ [eine ZIP-Datei herunterladen](https://github.com/sbosshardt/old-ether-checker/archive/refs/ (heads/master.zip) dieses Repositorys und extrahieren Sie es dann in sein eigenes Verzeichnis.

#### 2. Wechseln Sie in das lokale Repository

Nachdem eine Kopie des Repositorys in einem lokalen Verzeichnis vorhanden ist, verwenden Sie die Eingabeaufforderung, um in das Verzeichnis zu wechseln, z. B
„
CD Old-Ether-Checker
„

#### 3. Erstellen Sie das Docker-Image
Führen Sie den folgenden Befehl aus, um den Container zu erstellen:
„
docker build -t sbosshardt/old-ether-checker .
„

#### 4. Führen Sie den Docker-Container aus
„
docker run -p 3000:3000 sbosshardt/old-ether-checker
„

#### 5. Greifen Sie in Ihrem Webbrowser auf die alte Website zu
Gehen Sie zu: http://localhost:3000/ether und scrollen Sie nach unten zu „Haben Sie Ether während des Vorverkaufs gekauft?“ Abschnitt.


## Methode 2: Mit der Docker Desktop-GUI ausführen

Benutzer, die kein Befehlszeilenterminal verwenden möchten, können die grafische Benutzeroberfläche (GUI) von Docker Desktop verwenden, um eine alte Version der Website ethereum.org lokal zu hosten.

Anstatt den Container von Grund auf neu zu erstellen, lädt Ihr Computer den Container [sbosshardt/old-ether-checker](https://hub.docker.com/r/sbosshardt/old-ether-checker) vom Docker Hub herunter.

### Voraussetzungen

1. **Laden Sie Docker Desktop herunter und installieren Sie es:**
   - Für Windows- und Mac-Benutzer laden Sie Docker Desktop von der [Docker-Website](https://www.docker.com/products/docker-desktop) herunter.
   - Befolgen Sie die Installationsanweisungen auf der Docker-Website für Ihr Betriebssystem.

### Schritte zum Hosten des Tools

#### Schritt 1: Docker Desktop installieren

- Installieren Sie Docker Desktop, indem Sie den Anweisungen auf dem Bildschirm folgen, nachdem Sie das Installationsprogramm für Ihr Betriebssystem heruntergeladen haben.
- Öffnen Sie nach der Installation Docker Desktop, um sicherzustellen, dass es ausgeführt wird. Möglicherweise müssen Sie sich anmelden oder ein Docker-Konto erstellen.

#### Schritt 2: Ziehen Sie das Docker-Image

- Öffnen Sie Docker Desktop.
- Gehen Sie im linken Menü zum Abschnitt „Bilder“.
- Geben Sie in der Suchleiste oben auf der Seite „Bilder“ „sbosshardt/old-ether-checker“ ein und drücken Sie die Eingabetaste.
- Klicken Sie auf die Schaltfläche „Ziehen“ neben dem angezeigten Bildnamen. Docker Desktop lädt das Image vom Docker Hub auf Ihren Computer herunter.

#### Schritt 3: Führen Sie den Docker-Container aus

- Nachdem das Bild abgerufen wurde, gehen Sie im linken Menü auf die Registerkarte „Container/Apps“.
- Klicken Sie neben dem „old-ether-checker“-Bild auf „Ausführen“.
- Möglicherweise wird ein Einstellungsfenster angezeigt. Legen Sie die folgenden Optionen fest:
  - **LOCALHOST**: Setzen Sie den lokalen Port auf „3000“.
  - **CONTAINER-PORT**: Stellen Sie sicher, dass der Container-Port auf „3000“ eingestellt ist (dieser sollte automatisch gefüllt werden, wenn Sie den lokalen Port festlegen).
- Bestätigen Sie, indem Sie unten im Einstellungsfenster auf die Schaltfläche „Ausführen“ klicken.

#### Schritt 4: Greifen Sie auf das Tool zu

- Öffnen Sie einen beliebigen Webbrowser (z. B. Chrome, Firefox oder Edge).
- Geben Sie die folgende URL in die Adressleiste ein:
  „
  http://localhost:3000/ether
  „

Sie sollten nun die alte Version der Website ethereum.org sehen. Sie finden das Tool zur Überprüfung des Vorverkaufsguthabens, wenn Sie nach unten zu „Haben Sie während des Vorverkaufs Ether gekauft?“ scrollen. Abschnitt.