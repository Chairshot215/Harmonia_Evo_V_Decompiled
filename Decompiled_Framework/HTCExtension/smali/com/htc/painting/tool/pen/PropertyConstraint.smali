.class Lcom/htc/painting/tool/pen/PropertyConstraint;
.super Ljava/lang/Object;
.source "PropertyConstraint.java"

# interfaces
.implements Lcom/htc/painting/tool/pen/IPropertyConstraint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/painting/tool/pen/IPropertyConstraint;"
    }
.end annotation


# instance fields
.field private mIsRequire:Z

.field private mTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraint;->mIsRequire:Z

    iput-object p1, p0, Lcom/htc/painting/tool/pen/PropertyConstraint;->mTypeName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/htc/painting/tool/pen/PropertyConstraint;->mIsRequire:Z

    return-void
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraint;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public isCorrectType(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRequire()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/painting/tool/pen/PropertyConstraint;->mIsRequire:Z

    return v0
.end method
