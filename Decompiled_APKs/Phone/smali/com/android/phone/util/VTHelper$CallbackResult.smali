.class public Lcom/android/phone/util/VTHelper$CallbackResult;
.super Ljava/lang/Object;
.source "VTHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/VTHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackResult"
.end annotation


# instance fields
.field public actionIntent:Landroid/content/Intent;

.field public informationResId:I

.field public mode:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 2
    .parameter "mode"
    .parameter "packageContext"
    .parameter
    .parameter "number"
    .parameter "rawCause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p3, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->mode:I

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 168
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/phone/util/HtcPhoneUtils;->createDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->actionIntent:Landroid/content/Intent;

    .line 171
    const v0, 0x7f0e00aa

    iput v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->informationResId:I

    goto :goto_0

    .line 175
    :pswitch_1
    const v0, 0x7f0e00ab

    iput v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->informationResId:I

    goto :goto_0

    .line 179
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->actionIntent:Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->actionIntent:Landroid/content/Intent;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->actionIntent:Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/android/phone/util/VTHelper$CallbackResult;->actionIntent:Landroid/content/Intent;

    const-string v1, "cause"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
