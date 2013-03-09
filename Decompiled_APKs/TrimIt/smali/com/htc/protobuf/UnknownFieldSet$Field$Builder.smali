.class public final Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/UnknownFieldSet$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/UnknownFieldSet$Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->create()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 3

    .prologue
    .line 810
    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;-><init>()V

    .line 811
    .local v0, builder:Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    new-instance v1, Lcom/htc/protobuf/UnknownFieldSet$Field;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;-><init>(Lcom/htc/protobuf/UnknownFieldSet$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 812
    return-object v0
.end method


# virtual methods
.method public addFixed32(I)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    return-object p0
.end method

.method public addFixed64(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    return-object p0
.end method

.method public addGroup(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    return-object p0
.end method

.method public addLengthDelimited(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    return-object p0
.end method

.method public addVarint(J)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/UnknownFieldSet$Field;
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 829
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 834
    :goto_1
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 835
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 839
    :goto_2
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    .line 840
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 845
    :goto_3
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    .line 846
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 851
    :goto_4
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 852
    .local v0, returnMe:Lcom/htc/protobuf/UnknownFieldSet$Field;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 853
    return-object v0

    .line 827
    .end local v0           #returnMe:Lcom/htc/protobuf/UnknownFieldSet$Field;
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 842
    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 848
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    iget-object v2, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_4
.end method

.method public clear()Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .prologue
    .line 858
    new-instance v0, Lcom/htc/protobuf/UnknownFieldSet$Field;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;-><init>(Lcom/htc/protobuf/UnknownFieldSet$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    .line 859
    return-object p0
.end method

.method public mergeFrom(Lcom/htc/protobuf/UnknownFieldSet$Field;)Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 868
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$502(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$500(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 874
    :cond_1
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$602(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$600(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    :cond_3
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 881
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 882
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$702(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 884
    :cond_4
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$700(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 886
    :cond_5
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 887
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    .line 888
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$802(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 890
    :cond_6
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$800(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 892
    :cond_7
    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 893
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    .line 894
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$902(Lcom/htc/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;

    .line 896
    :cond_8
    iget-object v0, p0, Lcom/htc/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/htc/protobuf/UnknownFieldSet$Field;

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/UnknownFieldSet$Field;->access$900(Lcom/htc/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    :cond_9
    return-object p0
.end method
