.class Lcom/android/phone/InCallScreen$CallerData;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallerData"
.end annotation


# instance fields
.field private mCalendarEventUri:Ljava/lang/String;

.field private mCallerName:Ljava/lang/String;

.field private mCname:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhotoData:Landroid/graphics/drawable/Drawable;

.field private mPlaceCallPersonId:Ljava/lang/String;

.field private mbHasPhoto:Z

.field private numberType:I

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8707
    iput-object p1, p0, Lcom/android/phone/InCallScreen$CallerData;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/phone/InCallScreen$CallerData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 8707
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/phone/InCallScreen$CallerData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8707
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/phone/InCallScreen$CallerData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8707
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8707
    iput-object p1, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/android/phone/InCallScreen$CallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8707
    iput-object p1, p0, Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8757
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect clean latest caller info mCallerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbHasPhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 8758
    :cond_0
    iput-object v3, p0, Lcom/android/phone/InCallScreen$CallerData;->mPlaceCallPersonId:Ljava/lang/String;

    .line 8759
    iput-object v3, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    .line 8760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    .line 8761
    iput-object v3, p0, Lcom/android/phone/InCallScreen$CallerData;->mPhotoData:Landroid/graphics/drawable/Drawable;

    .line 8762
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallScreen$CallerData;->numberType:I

    .line 8763
    iput-object v3, p0, Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;

    .line 8764
    return-void
.end method

.method getCalendarEventUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8801
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mCalendarEventUri:Ljava/lang/String;

    return-object v0
.end method

.method getCname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8805
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mCname:Ljava/lang/String;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8776
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mPlaceCallPersonId:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8780
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    return-object v0
.end method

.method getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8797
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method getNumberType()I
    .locals 1

    .prologue
    .line 8792
    iget v0, p0, Lcom/android/phone/InCallScreen$CallerData;->numberType:I

    return v0
.end method

.method getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 8788
    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mPhotoData:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hasPhoto()Z
    .locals 1

    .prologue
    .line 8784
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mPhotoData:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "dialIntent"

    .prologue
    .line 8722
    :try_start_0
    const-string v1, "personId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mPlaceCallPersonId:Ljava/lang/String;

    .line 8727
    iget-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/phone/InCallScreen;->access$4900(Lcom/android/phone/InCallScreen;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;

    .line 8731
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    .line 8733
    iget-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8734
    iget-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8735
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mCallerName:Ljava/lang/String;

    .line 8736
    iget-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->showDialPad()V

    .line 8739
    :cond_0
    const-string v1, "hasPhoto"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    .line 8741
    const-string v1, "numberType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/InCallScreen$CallerData;->numberType:I

    .line 8745
    const-string v1, "com.htc.calendar.event_uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mCalendarEventUri:Ljava/lang/String;

    .line 8748
    const-string v1, "cname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen$CallerData;->mCname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8754
    :goto_0
    return-void

    .line 8750
    :catch_0
    move-exception v0

    .line 8751
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InCallScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "photoData"

    .prologue
    .line 8767
    if-eqz p1, :cond_0

    .line 8768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    .line 8769
    iput-object p1, p0, Lcom/android/phone/InCallScreen$CallerData;->mPhotoData:Landroid/graphics/drawable/Drawable;

    .line 8773
    :goto_0
    return-void

    .line 8771
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen$CallerData;->mbHasPhoto:Z

    goto :goto_0
.end method
