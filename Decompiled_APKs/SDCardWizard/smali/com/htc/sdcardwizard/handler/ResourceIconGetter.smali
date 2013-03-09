.class final Lcom/htc/sdcardwizard/handler/ResourceIconGetter;
.super Ljava/lang/Object;
.source "ResourceIconGetter.java"

# interfaces
.implements Lcom/htc/sdcardwizard/handler/IconGetter;


# instance fields
.field private final resourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/htc/sdcardwizard/handler/ResourceIconGetter;->resourceId:I

    .line 12
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    iget v0, p0, Lcom/htc/sdcardwizard/handler/ResourceIconGetter;->resourceId:I

    invoke-static {p1, v0}, Lcom/htc/sdcardwizard/utils/IconHelper;->loadIconByResourceId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
