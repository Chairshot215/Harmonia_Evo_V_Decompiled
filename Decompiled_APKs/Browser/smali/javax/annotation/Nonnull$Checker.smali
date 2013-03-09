.class public Ljavax/annotation/Nonnull$Checker;
.super Ljava/lang/Object;
.source "Nonnull.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator",
        "<",
        "Ljavax/annotation/Nonnull;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    check-cast p1, Ljavax/annotation/Nonnull;

    .end local p1
    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnull$Checker;->forConstantValue(Ljavax/annotation/Nonnull;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method

.method public forConstantValue(Ljavax/annotation/Nonnull;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 1
    .parameter "qualifierqualifierArgument"
    .parameter "value"

    .prologue
    .line 21
    if-nez p2, :cond_0

    .line 22
    sget-object v0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    goto :goto_0
.end method
