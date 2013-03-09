.class Lcom/android/phone/util/CbsUtils$ChannelChangeTask;
.super Landroid/os/AsyncTask;
.source "CbsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/CbsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelChangeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field cbList:Ljava/lang/String;

.field cbNameList:Ljava/lang/String;

.field cbReadonlyList:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ch"
    .parameter "chname"
    .parameter "readonly"

    .prologue
    const/4 v0, 0x0

    .line 933
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 929
    iput-object v0, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    .line 930
    iput-object v0, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    .line 931
    iput-object v0, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    .line 934
    iput-object p1, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    .line 935
    iput-object p2, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    .line 936
    iput-object p3, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    .line 938
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .parameter "v"

    .prologue
    .line 945
    iget-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 946
    const-string v7, ""

    iput-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    .line 947
    const-string v7, ""

    iput-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    .line 948
    const-string v7, ""

    iput-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    .line 950
    :cond_0
    const-string v7, "CbsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ChannelChangeTask passin current/new: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    #calls: Lcom/android/phone/util/CbsUtils;->constantRemoveCMASchannels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lcom/android/phone/util/CbsUtils;->access$1000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 952
    .local v4, ret:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    .line 953
    const/4 v7, 0x1

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    .line 954
    const/4 v7, 0x2

    aget-object v7, v4, v7

    iput-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    .line 955
    const-string v7, "CbsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ChannelChangeTask after remove CMAS current/new: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 958
    .local v3, newCBArray:[Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$900()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, currentCBArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 962
    .local v0, bredo:Z
    array-length v7, v3

    array-length v8, v1

    if-eq v7, v8, :cond_1

    .line 964
    const/4 v0, 0x1

    .line 991
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 967
    :cond_1
    const-string v7, ""

    iget-object v8, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ""

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const-string v7, ""

    iget-object v8, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ""

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string v7, ""

    iget-object v8, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, ""

    invoke-static {}, Lcom/android/phone/util/CbsUtils;->access$900()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 970
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 974
    :cond_5
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 975
    .local v6, tsnew:Ljava/util/TreeSet;
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 976
    .local v5, tscurrent:Ljava/util/TreeSet;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_6

    aget-object v7, v3, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 977
    :cond_6
    const/4 v2, 0x0

    :goto_2
    array-length v7, v1

    if-ge v2, v7, :cond_7

    aget-object v7, v1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 979
    :cond_7
    invoke-virtual {v6, v5}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 980
    const-string v7, "CbsUtils"

    const-string v8, "two string are different"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 984
    :cond_8
    const-string v7, "CbsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "two string are the same, update to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v7, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbList:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbNameList:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->cbReadonlyList:Ljava/lang/String;

    #calls: Lcom/android/phone/util/CbsUtils;->updateCBChList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/phone/util/CbsUtils;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 928
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "bredo"

    .prologue
    .line 996
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->setMmsCustomizelInitiated()V

    .line 997
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    const-string v0, "CbsUtils"

    const-string v1, "call doCbQuery from ChannelChangeTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->doCbQuery()V

    .line 1002
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 928
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/util/CbsUtils$ChannelChangeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
