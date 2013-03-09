.class Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;
.super Ljava/lang/Object;
.source "ShareViaImpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/ShareViaImpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SVIAppInfo"
.end annotation


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/appsharing/ShareViaImpActivity;


# direct methods
.method constructor <init>(Lcom/htc/appsharing/ShareViaImpActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .parameter
    .parameter "icon"
    .parameter "label"
    .parameter "activityInfo"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->this$0:Lcom/htc/appsharing/ShareViaImpActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 119
    iput-object p3, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->label:Ljava/lang/CharSequence;

    .line 120
    iput-object p4, p0, Lcom/htc/appsharing/ShareViaImpActivity$SVIAppInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 121
    return-void
.end method
