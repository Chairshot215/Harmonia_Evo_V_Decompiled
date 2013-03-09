.class public Lcom/htc/quickselection/HtcCheckableImageView;
.super Landroid/widget/CheckedTextView;
.source "HtcCheckableImageView.java"


# static fields
.field private static final THEMEABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/quickselection/HtcCheckableImageView;->THEMEABLE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->myInit()V

    .line 65
    return-void
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 97
    sget-boolean v3, Lcom/htc/quickselection/HtcCheckableImageView;->THEMEABLE:Z

    if-eqz v3, :cond_0

    .line 98
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 100
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 101
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 102
    .restart local v0       #am:Landroid/app/IActivityManager;
    :catch_0
    move-exception v2

    .line 103
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method myInit()V
    .locals 12

    .prologue
    const v11, 0x2080651

    .line 68
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingLeft()I

    move-result v3

    .line 69
    .local v3, left:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingTop()I

    move-result v7

    .line 70
    .local v7, top:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingRight()I

    move-result v4

    .line 71
    .local v4, right:I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingBottom()I

    move-result v0

    .line 73
    .local v0, bottom:I
    sget-boolean v8, Lcom/htc/quickselection/HtcCheckableImageView;->THEMEABLE:Z

    if-eqz v8, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getSkinPackageName()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, skinPackage:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "default"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    :cond_0
    invoke-virtual {p0, v11}, Lcom/htc/quickselection/HtcCheckableImageView;->setBackgroundResource(I)V

    .line 93
    .end local v5           #skinPackage:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, v3, v7, v4, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setPadding(IIII)V

    .line 94
    return-void

    .line 80
    .restart local v5       #skinPackage:Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 81
    .local v6, themeres:Landroid/content/res/Resources;
    const-string v8, "quickselection_slider_btn"

    const-string v9, "drawable"

    invoke-virtual {v6, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/quickselection/HtcCheckableImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 83
    .end local v6           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 84
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "HtcCheckableImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No skin package matches with the given name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, v11}, Lcom/htc/quickselection/HtcCheckableImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 87
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 88
    .local v2, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0, v11}, Lcom/htc/quickselection/HtcCheckableImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 114
    .local v0, ret:Z
    const-string v1, "HtcCheckableImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HtcCheckableImageView::onTouchEvent] >> event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getDrawableState()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    .line 132
    :goto_0
    return v0

    .line 121
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setChecked(Z)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
