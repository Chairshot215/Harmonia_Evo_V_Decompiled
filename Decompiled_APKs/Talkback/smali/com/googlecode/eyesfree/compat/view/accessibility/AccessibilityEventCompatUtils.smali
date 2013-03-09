.class public Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityEventCompatUtils;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 41
    .local v1, parcel:Landroid/os/Parcel;
    invoke-virtual {p0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sget-object v2, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 47
    .local v0, clone:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-object v0
.end method
