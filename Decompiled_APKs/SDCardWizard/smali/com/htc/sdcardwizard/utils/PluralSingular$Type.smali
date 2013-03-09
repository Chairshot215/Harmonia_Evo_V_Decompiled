.class public final enum Lcom/htc/sdcardwizard/utils/PluralSingular$Type;
.super Ljava/lang/Enum;
.source "PluralSingular.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/utils/PluralSingular;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdcardwizard/utils/PluralSingular$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

.field public static final enum FILE:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

.field public static final enum INSTALLED:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

.field public static final enum ITEM:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;


# instance fields
.field public pluralId:I

.field public singularId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f040046

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    const-string v1, "FILE"

    const v2, 0x7f040044

    const v3, 0x7f040045

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->FILE:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    .line 23
    new-instance v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    const-string v1, "ITEM"

    const v2, 0x7f040047

    const v3, 0x7f040048

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->ITEM:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    .line 24
    new-instance v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->INSTALLED:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    sget-object v1, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->FILE:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->ITEM:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->INSTALLED:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->$VALUES:[Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "pluralId"
    .parameter "singularId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->pluralId:I

    .line 30
    iput p4, p0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->singularId:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdcardwizard/utils/PluralSingular$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 21
    const-class v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdcardwizard/utils/PluralSingular$Type;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->$VALUES:[Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    invoke-virtual {v0}, [Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    return-object v0
.end method
