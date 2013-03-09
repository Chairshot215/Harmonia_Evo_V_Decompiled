.class public Lcom/android/systemui/statusbar/policy/AutoRotateController;
.super Ljava/lang/Object;
.source "AutoRotateController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.AutoRotateController"


# instance fields
.field private mAutoRotation:Z

.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mCheckBox:Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private getAutoRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAutoRotation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/AutoRotateController$1;-><init>(Lcom/android/systemui/statusbar/policy/AutoRotateController;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AutoRotateController;->mAutoRotation:Z

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->setAutoRotation(Z)V

    :cond_0
    return-void
.end method
