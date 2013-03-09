.class public Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$MyViewBinder;
.super Ljava/lang/Object;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$MyViewBinder;->this$0:Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;

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
    .line 406
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    instance-of v2, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 408
    check-cast v1, Landroid/widget/ImageView;

    .local v1, iv:Landroid/widget/ImageView;
    move-object v0, p2

    .line 409
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 410
    .local v0, da:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    const/4 v2, 0x1

    .line 413
    .end local v0           #da:Landroid/graphics/drawable/Drawable;
    .end local v1           #iv:Landroid/widget/ImageView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
