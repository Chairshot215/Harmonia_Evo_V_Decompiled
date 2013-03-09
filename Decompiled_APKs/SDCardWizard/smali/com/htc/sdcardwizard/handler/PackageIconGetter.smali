.class final Lcom/htc/sdcardwizard/handler/PackageIconGetter;
.super Ljava/lang/Object;
.source "PackageIconGetter.java"

# interfaces
.implements Lcom/htc/sdcardwizard/handler/IconGetter;


# instance fields
.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;->packageName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/sdcardwizard/utils/IconHelper;->loadIconByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
