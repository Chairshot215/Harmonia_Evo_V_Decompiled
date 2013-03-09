.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubCategory"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSubCategoryDisplay:Z

.field private hasSubCategoryId:Z

.field private subCategoryDisplay_:Ljava/lang/String;

.field private subCategoryId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13990
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryDisplay_:Ljava/lang/String;

    .line 14012
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryId_:Ljava/lang/String;

    .line 14049
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    .line 13990
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 14052
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    if-gez v0, :cond_0

    .line 14054
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSerializedSize()I

    .line 14056
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 14061
    const/4 v0, 0x0

    .line 14062
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14063
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14066
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14067
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14070
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->cachedSize:I

    .line 14071
    return v0
.end method

.method public getSubCategoryDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13996
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14013
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSubCategoryDisplay()Z
    .locals 1

    .prologue
    .line 13997
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay:Z

    return v0
.end method

.method public hasSubCategoryId()Z
    .locals 1

    .prologue
    .line 14014
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 14080
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 14084
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14085
    :sswitch_0
    return-object p0

    .line 14090
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->setSubCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    goto :goto_0

    .line 14094
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->setSubCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    goto :goto_0

    .line 14080
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
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
    .line 13988
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;

    move-result-object v0

    return-object v0
.end method

.method public setSubCategoryDisplay(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    .locals 1
    .parameter "value"

    .prologue
    .line 13999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay:Z

    .line 14000
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryDisplay_:Ljava/lang/String;

    .line 14001
    return-object p0
.end method

.method public setSubCategoryId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;
    .locals 1
    .parameter "value"

    .prologue
    .line 14016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId:Z

    .line 14017
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->subCategoryId_:Ljava/lang/String;

    .line 14018
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14041
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14042
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14044
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->hasSubCategoryId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14045
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto$SubCategory;->getSubCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 14047
    :cond_1
    return-void
.end method
