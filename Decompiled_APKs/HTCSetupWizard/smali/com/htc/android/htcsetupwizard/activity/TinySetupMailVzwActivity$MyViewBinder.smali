.class public Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$MyViewBinder;
.super Ljava/lang/Object;
.source "TinySetupMailVzwActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$MyViewBinder;->this$0:Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 178
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    instance-of v2, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 180
    check-cast v1, Landroid/widget/ImageView;

    .local v1, iv:Landroid/widget/ImageView;
    move-object v0, p2

    .line 181
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 182
    .local v0, da:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    const/4 v2, 0x1

    .line 185
    .end local v0           #da:Landroid/graphics/drawable/Drawable;
    .end local v1           #iv:Landroid/widget/ImageView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
