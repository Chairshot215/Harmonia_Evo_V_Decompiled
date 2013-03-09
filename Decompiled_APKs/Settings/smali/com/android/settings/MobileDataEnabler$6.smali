.class Lcom/android/settings/MobileDataEnabler$6;
.super Landroid/telephony/PhoneStateListener;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$6;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeparateServiceStateChanged([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "voiceServiceState"
    .parameter "dataServiceState"

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$6;->this$0:Lcom/android/settings/MobileDataEnabler;

    const/4 v3, 0x1

    #setter for: Lcom/android/settings/MobileDataEnabler;->mSupportDataServiceState:Z
    invoke-static {v2, v3}, Lcom/android/settings/MobileDataEnabler;->access$1102(Lcom/android/settings/MobileDataEnabler;Z)Z

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz p2, :cond_5

    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-nez v1, :cond_1

    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 344
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 345
    aget-object v1, p2, v0

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v1, :cond_3

    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 350
    aget-object v2, p2, v0

    if-eqz v2, :cond_2

    aget-object v2, p2, v0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 351
    aget-object v1, p2, v0

    .line 349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v1, :cond_5

    array-length v2, p2

    if-ge v0, v2, :cond_5

    .line 356
    aget-object v2, p2, v0

    if-eqz v2, :cond_4

    .line 357
    aget-object v1, p2, v0

    .line 355
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 365
    .end local v0           #i:I
    :cond_5
    if-eqz v1, :cond_6

    .line 366
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$6;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    #calls: Lcom/android/settings/MobileDataEnabler;->updateServiceState(I)V
    invoke-static {v2, v3}, Lcom/android/settings/MobileDataEnabler;->access$1300(Lcom/android/settings/MobileDataEnabler;I)V

    .line 368
    :cond_6
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$6;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mSupportDataServiceState:Z
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$1100(Lcom/android/settings/MobileDataEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$6;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$1200(Lcom/android/settings/MobileDataEnabler;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getGprsState()I

    move-result v0

    .line 334
    .local v0, dataSS:I
    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$6;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v1}, Lcom/android/settings/MobileDataEnabler;->checkMobileNetworkDisplayPolicy()V

    goto :goto_0
.end method
