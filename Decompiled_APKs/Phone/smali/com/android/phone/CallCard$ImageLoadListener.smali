.class final Lcom/android/phone/CallCard$ImageLoadListener;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Lcom/htc/util/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageLoadListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3517
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallCard$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3517
    invoke-direct {p0}, Lcom/android/phone/CallCard$ImageLoadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 3521
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    .line 3522
    .local v1, screen:Lcom/android/phone/InCallScreen;
    if-eqz v1, :cond_0

    .line 3523
    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCard()Lcom/android/phone/CallCard;

    move-result-object v0

    .line 3524
    .local v0, cc:Lcom/android/phone/CallCard;
    if-eqz v0, :cond_0

    .line 3525
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/phone/CallCard;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    .line 3528
    .end local v0           #cc:Lcom/android/phone/CallCard;
    :cond_0
    return-void
.end method
