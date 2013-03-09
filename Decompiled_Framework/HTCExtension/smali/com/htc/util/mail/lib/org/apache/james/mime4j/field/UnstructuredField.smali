.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
.source "UnstructuredField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField$Parser;
    }
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    return-object v0
.end method
