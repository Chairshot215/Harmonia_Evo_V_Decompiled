.class Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;
.super Landroid/os/Handler;
.source "HtcContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkingHandler"
.end annotation


# instance fields
.field private mWRContactInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/htccontacts/HtcContactInfo;)V
    .locals 1
    .parameter "looper"
    .parameter "contactInfo"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;->mWRContactInfo:Ljava/lang/ref/WeakReference;

    .line 361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;->mWRContactInfo:Ljava/lang/ref/WeakReference;

    .line 362
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;->mWRContactInfo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;->mWRContactInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    check-cast v0, Lcom/android/htccontacts/HtcContactInfo;

    .line 370
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_0
    if-nez v0, :cond_2

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    iget-boolean v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 374
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->buildAllInfo()V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    .line 386
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->buildAllInfo()V

    goto :goto_0

    .line 393
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfo;->buildSuggestInfo()V

    .line 395
    iget-object v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 406
    #getter for: Lcom/android/htccontacts/HtcContactInfo;->mIsRegistered:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcContactInfo;->access$100(Lcom/android/htccontacts/HtcContactInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 407
    iget-object v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/htccontacts/HtcContactInfo;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 408
    #setter for: Lcom/android/htccontacts/HtcContactInfo;->mIsRegistered:Z
    invoke-static {v0, v4}, Lcom/android/htccontacts/HtcContactInfo;->access$102(Lcom/android/htccontacts/HtcContactInfo;Z)Z

    .line 410
    :cond_3
    #setter for: Lcom/android/htccontacts/HtcContactInfo;->mIsLoad:Z
    invoke-static {v0, v4}, Lcom/android/htccontacts/HtcContactInfo;->access$002(Lcom/android/htccontacts/HtcContactInfo;Z)Z

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
