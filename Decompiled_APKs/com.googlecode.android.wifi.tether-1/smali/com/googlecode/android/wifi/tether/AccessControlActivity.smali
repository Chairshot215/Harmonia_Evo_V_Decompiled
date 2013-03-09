.class public Lcom/googlecode/android/wifi/tether/AccessControlActivity;
.super Landroid/app/ListActivity;
.source "AccessControlActivity.java"


# static fields
.field private static final MENU_APPLY:I = 0x1

.field private static final MENU_RELOAD_CLIENTS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TETHER -> AccessControlActivity"

.field public static currentInstance:Lcom/googlecode/android/wifi/tether/AccessControlActivity;


# instance fields
.field private application:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field private applyFooterAC:Landroid/widget/RelativeLayout;

.field private buttonAC:Landroid/widget/ToggleButton;

.field private buttonApply:Landroid/widget/Button;

.field private clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

.field clientConnectHandler:Landroid/os/Handler;

.field private statusAC:Landroid/widget/TextView;

.field public whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 45
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;

    .line 46
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonApply:Landroid/widget/Button;

    .line 47
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->statusAC:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->applyFooterAC:Landroid/widget/RelativeLayout;

    .line 187
    new-instance v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$1;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity$1;-><init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientConnectHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->updateListView()V

    return-void
.end method

.method static synthetic access$1(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    return-object v0
.end method

.method static synthetic access$3(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/data/ClientAdapter;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getCurrentClientData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACHeader()V

    return-void
.end method

.method static synthetic access$6(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->saveWhiteList()V

    return-void
.end method

.method private getCurrentClientData()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, clientDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    const/4 v4, 0x0

    .line 243
    .local v4, leases:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    :try_start_0
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v6}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getLeases()Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 247
    :goto_0
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    if-eqz v6, :cond_0

    .line 248
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v6}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->get()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    :cond_0
    if-eqz v4, :cond_1

    .line 263
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 264
    .local v3, enumLeases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_4

    .line 271
    .end local v3           #enumLeases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v6}, Lcom/googlecode/android/wifi/tether/TetherApplication;->resetClientMacLists()V

    .line 273
    return-object v1

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    const v7, 0x7f070038

    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 249
    .local v5, macAddress:Ljava/lang/String;
    new-instance v0, Lcom/googlecode/android/wifi/tether/data/ClientData;

    invoke-direct {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;-><init>()V

    .line 250
    .local v0, clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setConnected(Z)V

    .line 251
    const v7, 0x7f07003a

    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setIpAddress(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 253
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    check-cast v0, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 254
    .restart local v0       #clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    const-string v7, "TETHER -> AccessControlActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;->isConnected()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setAccessAllowed(Z)V

    .line 258
    invoke-virtual {v0, v5}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setMacAddress(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    .end local v0           #clientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    .end local v5           #macAddress:Ljava/lang/String;
    .restart local v3       #enumLeases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    .restart local v5       #macAddress:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/android/wifi/tether/data/ClientData;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private saveWhiteList()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Saving whitelist ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;-><init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 226
    return-void
.end method

.method private static setCurrent(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 58
    sput-object p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 59
    return-void
.end method

.method private toggleACHeader()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->statusAC:Landroid/widget/TextView;

    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->statusAC:Landroid/widget/TextView;

    const v1, 0x7f070035

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateListView()V
    .locals 6

    .prologue
    .line 229
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getClientDataAddList()Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    .local v0, clientDataAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getClientMacRemoveList()Ljava/util/ArrayList;

    move-result-object v1

    .line 231
    .local v1, clientMacRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    return-void

    .line 231
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 232
    .local v2, tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    invoke-virtual {v5, v2}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->addClient(Lcom/googlecode/android/wifi/tether/data/ClientData;)V

    goto :goto_0

    .line 234
    .end local v2           #tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 235
    .local v3, tmpMac:Ljava/lang/String;
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    invoke-virtual {v5, v3}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->removeClient(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 63
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Calling onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 69
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    .line 72
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->statusAC:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->applyFooterAC:Landroid/widget/RelativeLayout;

    .line 78
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;

    .line 79
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;-><init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonApply:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonApply:Landroid/widget/Button;

    new-instance v1, Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;-><init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 129
    invoke-static {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->setCurrent(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    .line 130
    new-instance v0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getCurrentClientData()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-direct {v0, p0, v1, v2}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;-><init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;Ljava/util/ArrayList;Lcom/googlecode/android/wifi/tether/TetherApplication;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    .line 131
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACHeader()V

    .line 135
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACFooter()V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    .line 282
    .local v2, supRetVal:Z
    const v3, 0x7f070030

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 283
    .local v0, refreshClientList:Landroid/view/SubMenu;
    const v3, 0x108004c

    invoke-interface {v0, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 284
    const/4 v3, 0x1

    const v4, 0x7f070031

    invoke-virtual {p0, v4}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 285
    .local v1, saveWhitelist:Landroid/view/SubMenu;
    const v3, 0x108004e

    invoke-interface {v1, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 286
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Calling onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 156
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "menuItem"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 292
    .local v0, supRetVal:Z
    const-string v1, "TETHER -> AccessControlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Menuitem:getId  -  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->saveWhiteList()V

    .line 296
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    .line 297
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACFooter()V

    .line 298
    sget-object v1, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 299
    sget-object v1, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getCurrentClientData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->refreshData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Calling onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACHeader()V

    .line 164
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->updateListView()V

    .line 165
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Calling onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    iget-boolean v0, v0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->saveWhiteList()V

    .line 144
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    .line 145
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 150
    return-void
.end method

.method public toggleACFooter()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    iget-boolean v0, v0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->applyFooterAC:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->applyFooterAC:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
