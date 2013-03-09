.class public Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;
.super Ljava/lang/Object;
.source "OperatorRearrangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyInfoData"
.end annotation


# instance fields
.field private mCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSelect:Z

.field final synthetic this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "select"
    .parameter "data"
    .parameter "code"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-boolean p2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mSelect:Z

    .line 197
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mName:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mCode:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mSelect:Z

    return v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setState(Z)V
    .locals 0
    .parameter "select"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->mSelect:Z

    .line 203
    return-void
.end method
