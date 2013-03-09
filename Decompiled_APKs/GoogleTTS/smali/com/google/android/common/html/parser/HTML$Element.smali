.class public final Lcom/google/android/common/html/parser/HTML$Element;
.super Ljava/lang/Object;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HTML$Element$Flow;
    }
.end annotation


# instance fields
.field private final breaksFlow:Z

.field private final empty:Z

.field private final flow:Lcom/google/android/common/html/parser/HTML$Element$Flow;

.field private final name:Ljava/lang/String;

.field private final optionalEndTag:Z

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLcom/google/android/common/html/parser/HTML$Element$Flow;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "empty"
    .parameter "optionalEndTag"
    .parameter "breaksFlow"
    .parameter "flow"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Element name can not be null"

    invoke-static {p1, v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "Element flow can not be null"

    invoke-static {p6, v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/google/android/common/html/parser/HTML$Element;->type:I

    .line 60
    iput-boolean p3, p0, Lcom/google/android/common/html/parser/HTML$Element;->empty:Z

    .line 61
    iput-boolean p4, p0, Lcom/google/android/common/html/parser/HTML$Element;->optionalEndTag:Z

    .line 62
    iput-boolean p5, p0, Lcom/google/android/common/html/parser/HTML$Element;->breaksFlow:Z

    .line 63
    iput-object p6, p0, Lcom/google/android/common/html/parser/HTML$Element;->flow:Lcom/google/android/common/html/parser/HTML$Element$Flow;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 117
    if-ne p1, p0, :cond_0

    .line 118
    const/4 v1, 0x1

    .line 124
    :goto_0
    return v1

    .line 120
    :cond_0
    instance-of v1, p1, Lcom/google/android/common/html/parser/HTML$Element;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/google/android/common/html/parser/HTML$Element;

    .line 122
    .local v0, that:Lcom/google/android/common/html/parser/HTML$Element;
    iget-object v1, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 124
    .end local v0           #that:Lcom/google/android/common/html/parser/HTML$Element;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->empty:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/common/html/parser/HTML$Element;->name:Ljava/lang/String;

    return-object v0
.end method
