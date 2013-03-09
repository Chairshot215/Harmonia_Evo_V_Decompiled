.class public Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;
.super Ljava/lang/Object;
.source "UakSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/htcuserassignkey/UakSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyInfoData"
.end annotation


# instance fields
.field private mCanUsed:Z

.field private mShortCutTarget:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakSetting;


# direct methods
.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mCanUsed:Z

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mShortCutTarget:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakSetting;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "isAssigned"
    .parameter "target"

    .prologue
    const/4 v0, 0x0

    .line 273
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->this$0:Lcom/android/settings/htcuserassignkey/UakSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mCanUsed:Z

    .line 269
    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mShortCutTarget:Ljava/lang/String;

    .line 274
    iput-boolean p2, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mCanUsed:Z

    .line 275
    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mShortCutTarget:Ljava/lang/String;

    .line 276
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mShortCutTarget:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mShortCutTarget:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAssigned()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mCanUsed:Z

    return v0
.end method

.method public setAssigned(Z)V
    .locals 0
    .parameter "isAssigned"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mCanUsed:Z

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakSetting$MyInfoData;->mShortCutTarget:Ljava/lang/String;

    return-void
.end method
