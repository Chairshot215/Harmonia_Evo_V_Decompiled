.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSubCategoriesResponseProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private subCategory_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13986
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    .line 14168
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    .line 13986
    return-void
.end method


# virtual methods
.method public addSubCategory(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 14133
    if-nez p1, :cond_0

    .line 14134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14136
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    .line 14139
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14140
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 14171
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 14173
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->getSerializedSize()I

    .line 14175
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 14180
    const/4 v2, 0x0

    .line 14181
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->getSubCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    .line 14182
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 14185
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    :cond_0
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->cachedSize:I

    .line 14186
    return v2
.end method

.method public getSubCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14119
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->subCategory_:Ljava/util/List;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14195
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 14199
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14200
    :sswitch_0
    return-object p0

    .line 14205
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;-><init>()V

    .line 14206
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 14207
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->addSubCategory(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    goto :goto_0

    .line 14195
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13984
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14163
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;->getSubCategoryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    .line 14164
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 14166
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    :cond_0
    return-void
.end method
