.class public Lcom/googlecode/android/wifi/tether/data/ClientAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClientAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TETHER -> ClientAdapter"


# instance fields
.field public accessControlActive:Z

.field public accessControlActivity:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

.field public application:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field private inflater:Landroid/view/LayoutInflater;

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;"
        }
    .end annotation
.end field

.field public saveRequired:Z


# direct methods
.method public constructor <init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;Ljava/util/ArrayList;Lcom/googlecode/android/wifi/tether/TetherApplication;)V
    .locals 2
    .parameter "accessControlActivity"
    .parameter
    .parameter "app"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/android/wifi/tether/AccessControlActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;",
            "Lcom/googlecode/android/wifi/tether/TetherApplication;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    .line 39
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    .line 40
    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->accessControlActive:Z

    .line 47
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->accessControlActivity:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 48
    iput-object p3, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 49
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->accessControlActive:Z

    .line 50
    iput-object p2, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized addClient(Lcom/googlecode/android/wifi/tether/data/ClientData;)V
    .locals 3
    .parameter "clientData"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v0, "TETHER -> ClientAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addClient() called: = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClientData()Ljava/util/ArrayList;
    .locals 1
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
    .line 55
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "returnView"
    .parameter "parent"

    .prologue
    .line 93
    const-string v5, "TETHER -> ClientAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getView() called: position = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 96
    .local v4, row:Lcom/googlecode/android/wifi/tether/data/ClientData;
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030002

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 97
    const v5, 0x7f0a000a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, macaddress:Landroid/widget/TextView;
    const v5, 0x7f0a000b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    .local v1, clientname:Landroid/widget/TextView;
    const v5, 0x7f0a000c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    .local v2, ipaddress:Landroid/widget/TextView;
    const v5, 0x7f0a0009

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 101
    .local v0, checkBoxAllowed:Landroid/widget/CheckBox;
    iget-boolean v5, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->accessControlActive:Z

    if-nez v5, :cond_3

    .line 102
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 111
    :goto_0
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 114
    const/4 v5, 0x0

    const/16 v6, 0xb6

    const/16 v7, 0x27

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    const/4 v5, 0x0

    const/16 v6, 0xb6

    const/16 v7, 0x27

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    const/4 v5, 0x0

    const/16 v6, 0xb6

    const/16 v7, 0x27

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/data/ClientData;->isAccessAllowed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    :cond_2
    return-object p2

    .line 105
    :cond_3
    new-instance v5, Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter$1;-><init>(Lcom/googlecode/android/wifi/tether/data/ClientAdapter;I)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v5, "- Unknown -"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const-string v5, "- Not connected -"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/16 v5, 0xff

    const/16 v6, 0x22

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    const/16 v5, 0xff

    const/16 v6, 0x22

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    const/16 v5, 0xff

    const/16 v6, 0x22

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public declared-synchronized refreshData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->accessControlActive:Z

    .line 60
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeClient(Ljava/lang/String;)V
    .locals 3
    .parameter "mac"

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 78
    :goto_1
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 73
    .local v1, tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 71
    .end local v1           #tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1       #tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toggleChecked(IZ)V
    .locals 4
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 83
    .local v0, tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;->isAccessAllowed()Z

    move-result v1

    if-eq v1, p2, :cond_0

    .line 84
    invoke-virtual {v0, p2}, Lcom/googlecode/android/wifi/tether/data/ClientData;->setAccessAllowed(Z)V

    .line 85
    const-string v1, "TETHER -> ClientAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client ==> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/data/ClientData;->isAccessAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    .line 88
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->accessControlActivity:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACFooter()V

    .line 90
    :cond_0
    return-void
.end method
