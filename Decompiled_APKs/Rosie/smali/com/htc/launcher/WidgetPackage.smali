.class public Lcom/htc/launcher/WidgetPackage;
.super Ljava/lang/Object;
.source "WidgetPackage.java"


# instance fields
.field private mLayoutInflater:Lcom/htc/launcher/WidgetLayoutInfalter;

.field public mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutInflater()Lcom/htc/launcher/WidgetLayoutInfalter;
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackage;->mLayoutInflater:Lcom/htc/launcher/WidgetLayoutInfalter;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/htc/launcher/WidgetLayoutInfalter;

    iget-object v1, p0, Lcom/htc/launcher/WidgetPackage;->mPackageContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/launcher/WidgetLayoutInfalter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/launcher/WidgetPackage;->mLayoutInflater:Lcom/htc/launcher/WidgetLayoutInfalter;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/WidgetPackage;->mLayoutInflater:Lcom/htc/launcher/WidgetLayoutInfalter;

    return-object v0
.end method
