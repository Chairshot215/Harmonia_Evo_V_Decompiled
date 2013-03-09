.class Lcom/android/systemui/statusbar/preference/Adb$2;
.super Ljava/lang/Object;
.source "Adb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Adb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Adb;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Adb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Adb$2;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb$2;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/preference/Adb;->mState:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb$2;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Adb;->adbStop()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb$2;->this$0:Lcom/android/systemui/statusbar/preference/Adb;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Adb;->adbStart()Z

    goto :goto_0
.end method
