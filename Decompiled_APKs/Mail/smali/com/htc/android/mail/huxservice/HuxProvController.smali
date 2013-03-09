.class public Lcom/htc/android/mail/huxservice/HuxProvController;
.super Ljava/lang/Object;
.source "HuxProvController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;,
        Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuxProvController"

.field public static mWeakUIHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/huxservice/HuxProvController;->mWeakUIHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 523
    return-void
.end method

.method public static deleteEndPointOnServer(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"
    .parameter "emailAddr"

    .prologue
    .line 270
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxProvController"

    const-string v5, "deleteAccount()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/htc/android/mail/huxservice/HuxProvController;->getEndpoints(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 273
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 274
    iget-object v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 275
    .local v3, userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    invoke-static {v3, p1}, Lcom/htc/android/mail/huxservice/HUXUTIL;->matchUserEndPointId(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v2

    .line 278
    .local v2, userEndPointId:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 280
    const-string v4, "HuxProvController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t not find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on server, delete local account."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 287
    .end local v0           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v2           #userEndPointId:I
    .end local v3           #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    .local v1, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v1

    .line 284
    .end local v1           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v0       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v2       #userEndPointId:I
    .restart local v3       #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :cond_1
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->deleteEndpoint(Landroid/content/Context;I)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .end local v2           #userEndPointId:I
    .end local v3           #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :cond_2
    move-object v1, v0

    .line 287
    .end local v0           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v1       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    goto :goto_0
.end method

.method public static deleteEndpoint(Landroid/content/Context;I)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 6
    .parameter "context"
    .parameter "userEndPointId"

    .prologue
    .line 141
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxProvController"

    const-string v4, "deleteEndpoint()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 145
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 147
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v3, "DELETE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/snc/user/authThree/endpoints/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 149
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 153
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v0

    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 2
    .parameter "provResult"

    .prologue
    .line 514
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 515
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 516
    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    iput v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    .line 517
    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->errorCode:I

    iput v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorCode:I

    .line 518
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    .line 520
    return-object v0
.end method

.method public static getEndpoints(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"

    .prologue
    .line 189
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxProvController"

    const-string v5, "getEndpoints()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 193
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 195
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v4, "GET"

    const-string v5, "/snc/user/authThree/endpoints"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 197
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    iget-object v4, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    const-string v5, "sncUserEndpoints"

    invoke-static {v4, v5}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "sncUserEndpoint"

    invoke-static {v4, v5}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_users(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 201
    .local v3, userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 207
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v3           #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :goto_0
    return-object v0

    .line 203
    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v3       #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 204
    iput-object v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 207
    .end local v3           #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :cond_2
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMasterEndpoint(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"

    .prologue
    .line 211
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxProvController"

    const-string v5, "getMasterEndpoint()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 214
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 215
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v3, 0x0

    .line 217
    .local v3, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v4, "GET"

    const-string v5, "/snc/user/authThree/masterEndpoints"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v3

    .line 219
    invoke-static {p0, v3}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    new-instance v2, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    iget-object v4, v3, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    invoke-direct {v2, v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;-><init>(Ljava/lang/Object;)V

    .line 221
    .local v2, info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    invoke-static {p0, v2}, Lcom/htc/android/mail/Account;->saveAvailableEndpoints(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;)V

    .line 222
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 223
    iput-object v2, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    .line 226
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v2           #info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :goto_0
    return-object v0

    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {v3}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPin(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxProvController"

    const-string v4, "getPin()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, huxProvControll:Lcom/htc/android/mail/huxservice/HUXPROV;
    sput-object p1, Lcom/htc/android/mail/huxservice/HuxProvController;->mWeakUIHandler:Ljava/lang/ref/WeakReference;

    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v3, "GET"

    const-string v4, "/snc/user/authOne/getPIN"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v1

    .line 258
    invoke-static {p0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    new-instance v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v2}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 260
    .local v2, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 261
    iget v3, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    iput v3, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    .line 264
    .end local v2           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v2

    goto :goto_0
.end method

.method public static getProfile(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"

    .prologue
    .line 61
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxProvController"

    const-string v5, "getProfile()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v3, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v3}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 65
    .local v3, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 67
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v4, "GET"

    const-string v5, "/snc/user/authThree/provisioning/profile"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 69
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    iget-object v4, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    invoke-direct {v1, v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;-><init>(Ljava/lang/Object;)V

    .line 72
    .local v1, profileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;
    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeServer:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeUser:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeNickName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 76
    invoke-static {p0, v1}, Lcom/htc/android/mail/Account;->saveExchangeSetting(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;)V

    .line 77
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 78
    iput-object v1, v3, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    .line 83
    .end local v1           #profileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;
    .end local v3           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v3

    .line 81
    .restart local v1       #profileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;
    .restart local v3       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HuxProvController"

    const-string v5, "Does not contain enough exchange setting info"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1           #profileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;
    :cond_2
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v3

    goto :goto_0
.end method

.method public static getRefreshToken(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 9
    .parameter "context"

    .prologue
    .line 114
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HuxProvController"

    const-string v7, "getRefreshToken()"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 118
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 120
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v6, "GET"

    const-string v7, "/snc/user/authThree/refreshToken"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 122
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    iget-object v6, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    const-string v7, "sncAuth:token"

    invoke-static {v6, v7}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, token:Ljava/lang/String;
    iget-object v6, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    const-string v7, "sncAuth:expiryDate"

    invoke-static {v6, v7}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, tokenExpiry:Ljava/lang/String;
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 137
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #tokenExpiry:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 128
    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v3       #token:Ljava/lang/String;
    .restart local v4       #tokenExpiry:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lcom/htc/android/mail/Account;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, v4}, Lcom/htc/android/mail/Account;->setTokenExpiry(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v5, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;

    invoke-direct {v5, v3, v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v5, tokenObject:Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 134
    iput-object v5, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #tokenExpiry:Ljava/lang/String;
    .end local v5           #tokenObject:Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;
    :cond_2
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRefreshTokenFinalResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 5
    .parameter "context"
    .parameter "provResult"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 453
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getToken(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, tokenData:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 456
    aget-object v2, v1, v3

    invoke-static {p0, v2}, Lcom/htc/android/mail/Account;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    aget-object v2, v1, v4

    invoke-static {p0, v2}, Lcom/htc/android/mail/Account;->setTokenExpiry(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    iput-boolean v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 465
    .end local v0           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v1           #tokenData:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 461
    .restart local v0       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v1       #tokenData:[Ljava/lang/String;
    :cond_0
    iput-boolean v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    goto :goto_0

    .line 465
    .end local v1           #tokenData:[Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTags(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 5
    .parameter "context"

    .prologue
    .line 480
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 481
    .local v0, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    const-string v2, "GET"

    const-string v3, "/snc/user/authThree/tags"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v1

    .line 491
    .local v1, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    invoke-static {p0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->getTagsFinalResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v2

    return-object v2
.end method

.method private static getTagsFinalResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 3
    .parameter "context"
    .parameter "provResult"

    .prologue
    .line 495
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 496
    .local v0, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    invoke-static {p0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getTags(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 498
    .local v1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;>;"
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 499
    iput-object v1, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    .line 502
    .end local v0           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v1           #tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;>;"
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_0
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVerifyDeviceInfo(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"

    .prologue
    .line 230
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxProvController"

    const-string v5, "getVerifyDeviceInfo()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 234
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 236
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v4, "GET"

    const-string v5, "/snc/user/authTwo/verifyDevice"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 238
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    new-instance v3, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    iget-object v4, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;-><init>(Ljava/lang/Object;)V

    .line 240
    .local v3, verifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    invoke-static {p0, v3}, Lcom/htc/android/mail/Account;->saveAvailableEndpoints(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;)V

    .line 241
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 242
    iget v4, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    iput v4, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    .line 243
    iput-object v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    .line 246
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v3           #verifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :goto_0
    return-object v0

    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static huxAccountChangeNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "val"

    .prologue
    .line 301
    invoke-static {p0}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/htc/android/mail/Account;->setNeedSyncHUXAccount(Landroid/content/Context;Z)V

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail.SYNCHUXACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z
    .locals 2
    .parameter "context"
    .parameter "provResult"

    .prologue
    .line 506
    iget v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    .line 507
    :cond_0
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static postEndpoints(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 5
    .parameter "context"
    .parameter "body"

    .prologue
    .line 173
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxProvController"

    const-string v4, "postEndpoints()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 176
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 177
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 179
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v3, "POST"

    const-string v4, "/snc/user/authThree/endpoints"

    invoke-virtual {v1, v3, v4, p1}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 181
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 185
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v0

    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static postProfile(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"
    .parameter "body"

    .prologue
    const/4 v6, 0x1

    .line 44
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxProvController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProfile() body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v2}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 48
    .local v2, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v1, 0x0

    .line 50
    .local v1, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v3, "POST"

    const-string v4, "/snc/user/authThree/provisioning/profile"

    invoke-virtual {v0, v3, v4, p1}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v1

    .line 52
    invoke-static {p0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    iput-boolean v6, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 54
    invoke-static {p0, v6}, Lcom/htc/android/mail/Account;->setIsExchangeSaved(Landroid/content/Context;Z)V

    .line 57
    .end local v2           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v2

    .restart local v2       #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v2

    goto :goto_0
.end method

.method public static postToken(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 8
    .parameter "context"
    .parameter "body"

    .prologue
    .line 87
    sget-boolean v6, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HuxProvController"

    const-string v7, "getRefreshToken()"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 91
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 93
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v6, "POST"

    const-string v7, "/snc/user/authTwo/getToken"

    invoke-virtual {v1, v6, v7, p1}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 95
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    iget-object v6, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    const-string v7, "sncAuth:token"

    invoke-static {v6, v7}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, token:Ljava/lang/String;
    iget-object v6, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->xobj:Ljava/lang/Object;

    const-string v7, "sncAuth:expiryDate"

    invoke-static {v6, v7}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, tokenExpiry:Ljava/lang/String;
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    .line 110
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #tokenExpiry:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .restart local v3       #token:Ljava/lang/String;
    .restart local v4       #tokenExpiry:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Lcom/htc/android/mail/Account;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-static {p0, v4}, Lcom/htc/android/mail/Account;->setTokenExpiry(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    new-instance v5, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;

    invoke-direct {v5, v3, v4}, Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v5, tokenObject:Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 107
    iput-object v5, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 110
    .end local v3           #token:Ljava/lang/String;
    .end local v4           #tokenExpiry:Ljava/lang/String;
    .end local v5           #tokenObject:Lcom/htc/android/mail/huxservice/HUXUTIL$TokenObject;
    :cond_2
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static putEndpoints(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 5
    .parameter "context"
    .parameter "body"

    .prologue
    .line 157
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HuxProvController"

    const-string v4, "postEndpoints()"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;-><init>()V

    .line 161
    .local v0, finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    const/4 v2, 0x0

    .line 163
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const-string v3, "PUT"

    const-string v4, "/snc/user/authThree/endpoints"

    invoke-virtual {v1, v3, v4, p1}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 165
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->isSuccessfulProvResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 169
    .end local v0           #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :goto_0
    return-object v0

    .restart local v0       #finalResult:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->failedResult(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static refreshToken(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .locals 7
    .parameter "context"

    .prologue
    .line 469
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXPROV;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HUXPROV;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, huxProv:Lcom/htc/android/mail/huxservice/HUXPROV;
    const/4 v2, 0x0

    .line 471
    .local v2, provResult:Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 472
    const-string v4, "GET"

    const-string v5, "/snc/user/authThree/refreshToken"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXPROV;->prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-result-object v2

    .line 473
    invoke-static {v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->repeatCommand(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 475
    :cond_0
    invoke-static {p0, v2}, Lcom/htc/android/mail/huxservice/HuxProvController;->getRefreshTokenFinalResult(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v3

    .line 476
    .local v3, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    return-object v3

    .line 471
    .end local v3           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static repeatCommand(Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;)Z
    .locals 3
    .parameter "provResult"

    .prologue
    const/4 v1, 0x0

    .line 437
    iget v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;->status:I

    .line 438
    .local v0, status:I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    .line 439
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 444
    const/4 v1, 0x1

    .line 447
    :cond_1
    :sswitch_0
    return v1

    .line 439
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static smsPinReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "pin"

    .prologue
    .line 292
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxProvController"

    const-string v1, "smsPinReceived()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/android/mail/Account;->setPIN(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/htc/android/mail/huxservice/HuxProvController;->mWeakUIHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/mail/huxservice/HuxProvController;->mWeakUIHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    sget-object v0, Lcom/htc/android/mail/huxservice/HuxProvController;->mWeakUIHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->sendSMSResult(Ljava/lang/String;)V

    .line 298
    :cond_1
    return-void
.end method

.method public static declared-synchronized syncHuxAccounts(Landroid/content/Context;)Z
    .locals 19
    .parameter "context"

    .prologue
    .line 312
    const-class v16, Lcom/htc/android/mail/huxservice/HuxProvController;

    monitor-enter v16

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/huxservice/HuxProvController;->getEndpoints(Landroid/content/Context;)Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;

    move-result-object v13

    .line 314
    .local v13, result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    iget-boolean v15, v13, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_0

    .line 315
    const/4 v15, 0x0

    .line 402
    :goto_0
    monitor-exit v16

    return v15

    .line 318
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v5

    .line 319
    .local v5, accountPool:Lcom/htc/android/mail/AccountPool;
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v15}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v7

    .line 320
    .local v7, huxAccounts:[Lcom/htc/android/mail/Account;
    array-length v15, v7

    new-array v6, v15, [Ljava/lang/String;

    .line 323
    .local v6, deviceAccounts:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v15, v7

    if-ge v8, v15, :cond_1

    .line 324
    aget-object v15, v7, v8

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v8

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 327
    :cond_1
    const/4 v11, 0x0

    .line 328
    .local v11, needSetDefaultAccount:Z
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v15

    if-nez v15, :cond_2

    .line 329
    const/4 v11, 0x1

    .line 332
    :cond_2
    iget-object v14, v13, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    .line 333
    .local v14, userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v12, v15, [Ljava/lang/String;

    .line 336
    .local v12, platformAccounts:[Ljava/lang/String;
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 337
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v15, v15, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    aput-object v15, v12, v8

    .line 336
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 340
    :cond_3
    const-wide/16 v3, -0x1

    .line 341
    .local v3, accountId:J
    const/4 v10, 0x0

    .line 343
    .local v10, isAccountAddedToDevice:Z
    const/4 v8, 0x0

    :goto_3
    array-length v15, v12

    if-ge v8, v15, :cond_6

    .line 344
    aget-object v15, v12, v8

    invoke-static {v6, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 345
    sget-boolean v15, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v15, :cond_4

    .line 346
    const-string v15, "HuxProvController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "insertAccount():"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v12, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_4
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v15, v1, v2}, Lcom/htc/android/mail/huxservice/HUXUTIL;->insertAccount(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 351
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 352
    sget-object v15, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v15}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 353
    sget-object v15, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v15, v3, v4}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 354
    sget-object v15, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 361
    new-instance v15, Landroid/app/backup/BackupManager;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 363
    aget-object v15, v12, v8

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/android/mail/huxservice/HUXUTIL;->updateEmailAddrToPublicAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v9, intent:Landroid/content/Intent;
    const-string v15, "silder_state"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    const/4 v10, 0x1

    .line 343
    .end local v9           #intent:Landroid/content/Intent;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 372
    :cond_6
    if-eqz v11, :cond_7

    const-wide/16 v17, -0x1

    cmp-long v15, v3, v17

    if-eqz v15, :cond_7

    .line 373
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/htc/android/mail/MailProvider;->setDefaultAccountById(Landroid/content/Context;J)V

    .line 377
    :cond_7
    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v15}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v7

    .line 378
    array-length v15, v7

    new-array v6, v15, [Ljava/lang/String;

    .line 379
    const/4 v8, 0x0

    :goto_4
    array-length v15, v7

    if-ge v8, v15, :cond_8

    .line 380
    aget-object v15, v7, v8

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v8

    .line 379
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 384
    :cond_8
    const/4 v8, 0x0

    :goto_5
    array-length v15, v6

    if-ge v8, v15, :cond_b

    .line 385
    aget-object v15, v6, v8

    invoke-static {v12, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 386
    sget-boolean v15, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v15, :cond_9

    .line 387
    const-string v15, "HuxProvController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleteAccount():"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v6, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_9
    aget-object v15, v7, v8

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->delete()Z

    .line 384
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 392
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/android/mail/Account;->setNeedSyncHUXAccount(Landroid/content/Context;Z)V

    .line 393
    if-eqz v10, :cond_c

    .line 394
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/android/mail/Account;->setHuxNeedSyncAfterSyncAccount(Landroid/content/Context;Z)V

    .line 396
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.htc.android.mail.intent.action.MAIL_SERVICE_SYNC_MAIL"

    const-string v17, "content://mail/accounts/9223372036854775805"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v15, "com.htc.android.mail"

    const-string v17, "com.htc.android.mail.mailservice.MailService"

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v15, "checkAccountID"

    const-wide v17, 0x7ffffffffffffffdL

    move-wide/from16 v0, v17

    invoke-virtual {v9, v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v9           #intent:Landroid/content/Intent;
    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 312
    .end local v3           #accountId:J
    .end local v5           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v6           #deviceAccounts:[Ljava/lang/String;
    .end local v7           #huxAccounts:[Lcom/htc/android/mail/Account;
    .end local v8           #i:I
    .end local v10           #isAccountAddedToDevice:Z
    .end local v11           #needSetDefaultAccount:Z
    .end local v12           #platformAccounts:[Ljava/lang/String;
    .end local v13           #result:Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
    .end local v14           #userEndpointInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15
.end method
