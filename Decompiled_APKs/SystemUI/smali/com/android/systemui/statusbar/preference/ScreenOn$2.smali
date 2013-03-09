.class Lcom/android/systemui/statusbar/preference/ScreenOn$2;
.super Ljava/lang/Object;
.source "ScreenOn.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/ScreenOn;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->toggleSettings()V

    const/4 v0, 0x1

    return v0
.end method

.method public toggleSettings()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v0, v2, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/preference/ScreenOn;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
