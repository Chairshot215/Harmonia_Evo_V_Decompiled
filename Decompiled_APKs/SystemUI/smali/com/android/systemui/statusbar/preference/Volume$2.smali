.class Lcom/android/systemui/statusbar/preference/Volume$2;
.super Landroid/database/ContentObserver;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Volume;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Volume;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    #getter for: Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Volume;->access$000(Lcom/android/systemui/statusbar/preference/Volume;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    #getter for: Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/preference/Volume;->access$100(Lcom/android/systemui/statusbar/preference/Volume;)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    #getter for: Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Volume;->access$200(Lcom/android/systemui/statusbar/preference/Volume;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    #setter for: Lcom/android/systemui/statusbar/preference/Volume;->mProgress:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/Volume;->access$202(Lcom/android/systemui/statusbar/preference/Volume;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$2;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSeekBar:Lcom/android/systemui/statusbar/widget/SeekBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
