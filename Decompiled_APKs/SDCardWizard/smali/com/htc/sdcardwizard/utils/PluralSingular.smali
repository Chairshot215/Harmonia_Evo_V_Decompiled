.class public final Lcom/htc/sdcardwizard/utils/PluralSingular;
.super Ljava/lang/Object;
.source "PluralSingular.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/utils/PluralSingular$Type;
    }
.end annotation


# instance fields
.field private final plural:Ljava/lang/String;

.field private final singular:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sdcardwizard/utils/PluralSingular$Type;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->pluralId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/utils/PluralSingular;->plural:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->singularId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/utils/PluralSingular;->singular:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getCaption(J)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 15
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sdcardwizard/utils/PluralSingular;->singular:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/utils/PluralSingular;->plural:Ljava/lang/String;

    goto :goto_0
.end method
