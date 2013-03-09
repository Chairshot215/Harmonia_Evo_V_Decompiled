.class Lcom/htc/fm/CommonControlWrapper;
.super Ljava/lang/Object;
.source "CommonControlWrapper.java"


# static fields
.field public static final ICON_POWER_OFF:I = 0x2

.field public static final ICON_POWER_ON:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerIconID(I)I
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public static getSaveCancelPanel(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .parameter "activity"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initAddButton(Landroid/app/Activity;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initPowerButton(Landroid/app/Activity;Lcom/htc/widget/HeaderBarImage;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "activity"
    .parameter "powerButton"
    .parameter "listener"

    .prologue
    .line 43
    return-void
.end method

.method public static setCancelButtonIcon(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 71
    return-void
.end method

.method public static setDeleteButtonIcon(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 80
    return-void
.end method

.method public static setSaveButtonIcon(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 62
    return-void
.end method

.method public static setTitle(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "activity"
    .parameter "title"

    .prologue
    .line 53
    return-void
.end method

.method public static swapTitlebar(Landroid/app/Activity;Z)V
    .locals 0
    .parameter "activity"
    .parameter "withoutButton"

    .prologue
    .line 101
    return-void
.end method
