.class public Ljava/lang/annotation/AnnotationTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "AnnotationTypeMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x70c5160eddbf1a8fL


# instance fields
.field private element:Ljava/lang/reflect/Method;

.field private foundType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The annotation element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t match the type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    iput-object p2, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public element()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public foundType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    return-object v0
.end method
