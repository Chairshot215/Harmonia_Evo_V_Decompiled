.class public Lcom/htc/android/mail/easclient/ServerInformation;
.super Ljava/lang/Object;
.source "ServerInformation.java"


# static fields
.field public static final ACCOUNT_TYPE_FULL_EMAIL:I = 0x2

.field public static final ACCOUNT_TYPE_USERNAME:I = 0x1

.field public static autocompleteServer:[Lcom/htc/android/mail/easclient/ServerInformation;


# instance fields
.field accountType:I

.field domain:Ljava/lang/String;

.field maildomain:Ljava/lang/String;

.field provider:Ljava/lang/String;

.field serverAddress:Ljava/lang/String;

.field useSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 16
    const/16 v0, 0x31

    new-array v7, v0, [Lcom/htc/android/mail/easclient/ServerInformation;

    const/4 v8, 0x0

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com.au"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v5

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.com.au"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v6

    const/4 v8, 0x3

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.cn"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/4 v8, 0x4

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.com"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/4 v8, 0x5

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.in"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/4 v8, 0x6

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.jp"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/4 v8, 0x7

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.jp"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x8

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.kr"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x9

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com.hk"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0xa

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com.tw"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0xb

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@livemail.tw"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0xc

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.sg"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0xd

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.my"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0xe

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.th"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0xf

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.id"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x10

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.ph"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x11

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com.vn"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x12

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.be"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x13

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.be"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x14

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.dk"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x15

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.dk"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x16

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.fi"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x17

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.fr"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x18

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.fr"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x19

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.de"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x1a

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.de"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x1b

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.it"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x1c

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.it"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x1d

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.nl"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x1e

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.no"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x1f

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.no"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x20

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.es"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x21

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.se"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x22

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.se"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x23

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.ch"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x24

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com.tr"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x25

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.uk"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x26

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@live.co.uk"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x27

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.sk"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x28

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.cz"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x29

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.gr"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x2a

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.lv"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x2b

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.lt"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x2c

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.rs"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x2d

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.za"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x2e

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.co.nz"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x2f

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "Hotmail"

    const-string v2, "@hotmail.com.br"

    const-string v3, "m.hotmail.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    const/16 v8, 0x30

    new-instance v0, Lcom/htc/android/mail/easclient/ServerInformation;

    const-string v1, "GMail"

    const-string v2, "@gmail.com"

    const-string v3, "m.google.com"

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/easclient/ServerInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    aput-object v0, v7, v8

    sput-object v7, Lcom/htc/android/mail/easclient/ServerInformation;->autocompleteServer:[Lcom/htc/android/mail/easclient/ServerInformation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .parameter "provider"
    .parameter "maildomain"
    .parameter "serverAddress"
    .parameter "domain"
    .parameter "useSSL"
    .parameter "accountType"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/easclient/ServerInformation;->accountType:I

    .line 69
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ServerInformation;->provider:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/htc/android/mail/easclient/ServerInformation;->maildomain:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/htc/android/mail/easclient/ServerInformation;->serverAddress:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/htc/android/mail/easclient/ServerInformation;->domain:Ljava/lang/String;

    .line 73
    iput-boolean p5, p0, Lcom/htc/android/mail/easclient/ServerInformation;->useSSL:Z

    .line 74
    iput p6, p0, Lcom/htc/android/mail/easclient/ServerInformation;->accountType:I

    .line 75
    return-void
.end method

.method public static getAccountName(Ljava/lang/String;Lcom/htc/android/mail/easclient/ServerInformation;)Ljava/lang/String;
    .locals 3
    .parameter "email"
    .parameter "serverList"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 98
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 93
    .restart local p0
    :cond_1
    iget v1, p1, Lcom/htc/android/mail/easclient/ServerInformation;->accountType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 95
    iget v1, p1, Lcom/htc/android/mail/easclient/ServerInformation;->accountType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 96
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 98
    goto :goto_0
.end method

.method public static getServerInfoByMail(Ljava/lang/String;)Lcom/htc/android/mail/easclient/ServerInformation;
    .locals 4
    .parameter "email"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/htc/android/mail/easclient/ServerInformation;->autocompleteServer:[Lcom/htc/android/mail/easclient/ServerInformation;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/easclient/ServerInformation;->autocompleteServer:[Lcom/htc/android/mail/easclient/ServerInformation;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/htc/android/mail/easclient/ServerInformation;->maildomain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    sget-object v1, Lcom/htc/android/mail/easclient/ServerInformation;->autocompleteServer:[Lcom/htc/android/mail/easclient/ServerInformation;

    aget-object v1, v1, v0

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
