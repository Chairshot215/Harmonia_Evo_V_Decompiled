.class Lcom/android/phone/PhoneApp$ContactInfo;
.super Ljava/lang/Object;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactInfo"
.end annotation


# instance fields
.field mNumber:Ljava/lang/String;

.field mRingtonePath:Ljava/lang/String;

.field mSendToVoiceMail:Z

.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "number"
    .parameter "ringtonePath"
    .parameter "sendToVoiceMail"

    .prologue
    .line 5180
    iput-object p1, p0, Lcom/android/phone/PhoneApp$ContactInfo;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5181
    iput-object p2, p0, Lcom/android/phone/PhoneApp$ContactInfo;->mNumber:Ljava/lang/String;

    .line 5182
    iput-boolean p4, p0, Lcom/android/phone/PhoneApp$ContactInfo;->mSendToVoiceMail:Z

    .line 5183
    iput-object p3, p0, Lcom/android/phone/PhoneApp$ContactInfo;->mRingtonePath:Ljava/lang/String;

    .line 5184
    return-void
.end method


# virtual methods
.method public getRingtonePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5191
    iget-object v0, p0, Lcom/android/phone/PhoneApp$ContactInfo;->mRingtonePath:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 5187
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp$ContactInfo;->mSendToVoiceMail:Z

    return v0
.end method
