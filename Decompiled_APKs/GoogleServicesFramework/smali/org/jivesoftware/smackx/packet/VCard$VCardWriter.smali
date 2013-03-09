.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;
.super Ljava/lang/Object;
.source "VCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/VCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardWriter"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/jivesoftware/smackx/packet/VCard;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter
    .parameter "sb"

    .prologue
    .line 772
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    .line 774
    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 769
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->buildActualContent()V

    return-void
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 769
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 769
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$900(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V

    return-void
.end method

.method private appendAddress(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .parameter "addr"
    .parameter "code"

    .prologue
    .line 852
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 853
    const-string v0, "ADR"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 865
    :cond_0
    return-void
.end method

.method private appendEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "email"
    .parameter "type"

    .prologue
    .line 825
    if-eqz p1, :cond_0

    .line 826
    const-string v0, "EMAIL"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;

    invoke-direct {v2, p0, p2, p1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 835
    :cond_0
    return-void
.end method

.method private appendEmptyTag(Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 868
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    return-void
.end method

.method private appendFN()V
    .locals 3

    .prologue
    .line 898
    new-instance v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    .line 911
    .local v0, contentBuilder:Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;
    const-string v1, "FN"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 912
    return-void
.end method

.method private appendGenericFields()V
    .locals 4

    .prologue
    .line 872
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$1100(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 873
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 875
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;
    invoke-static {v2}, Lorg/jivesoftware/smackx/packet/VCard;->access$1200(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 880
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 882
    .restart local v0       #entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 884
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_1
    return-void
.end method

.method private appendN()V
    .locals 3

    .prologue
    .line 915
    const-string v0, "N"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$7;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 922
    return-void
.end method

.method private appendOrganization()V
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$1300(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "ORG"

    const/4 v1, 0x1

    new-instance v2, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 895
    :cond_0
    return-void
.end method

.method private appendPhones(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .parameter "phones"
    .parameter "code"

    .prologue
    .line 838
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 839
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 841
    .local v0, entry:Ljava/util/Map$Entry;
    const-string v2, "TEL"

    const/4 v3, 0x1

    new-instance v4, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;

    invoke-direct {v4, p0, v0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$3;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/util/Map$Entry;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v4}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0

    .line 849
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method private appendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "tagText"

    .prologue
    .line 954
    if-nez p2, :cond_0

    .line 961
    :goto_0
    return-void

    .line 955
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$8;

    invoke-direct {v0, p0, p2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$8;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;)V

    .line 960
    .local v0, contentBuilder:Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    goto :goto_0
.end method

.method private appendTag(Ljava/lang/String;Ljava/util/HashMap;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 7
    .parameter "tag"
    .parameter
    .parameter "hasContent"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, attrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x27

    .line 926
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    if-eqz p2, :cond_0

    .line 929
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 930
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 932
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 933
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 934
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 935
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 939
    .end local v0           #itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 940
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 941
    invoke-interface {p4}, Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;->addTagContent()V

    .line 942
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    :goto_1
    return-void

    .line 945
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;

    const-string v5, "/>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private appendTag(Ljava/lang/String;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V
    .locals 1
    .parameter "tag"
    .parameter "hasContent"
    .parameter "builder"

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/util/HashMap;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 951
    return-void
.end method

.method private buildActualContent()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$200(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendFN()V

    .line 808
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendN()V

    .line 811
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendOrganization()V

    .line 812
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendGenericFields()V

    .line 814
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$300(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$400(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$500(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$600(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$700(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WORK"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$800(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOME"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V

    .line 822
    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .prologue
    .line 777
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 778
    .local v0, attrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "xmlns"

    const-string v4, "vcard-temp"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const/4 v2, 0x0

    .line 782
    .local v2, needGoogleNs:Z
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/VCard;->getLocalAvatarHash()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, localHash:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 785
    const-string v3, "ns1:hash"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const/4 v2, 0x1

    .line 789
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/VCard;->hasModified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    const-string v4, "ns1:modified"

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/packet/VCard;->isModified()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "true"

    :goto_0
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const/4 v2, 0x1

    .line 794
    :cond_1
    if-eqz v2, :cond_2

    .line 795
    const-string v3, "xmlns:ns1"

    const-string v4, "google:avatar"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_2
    const-string v3, "vCard"

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #calls: Lorg/jivesoftware/smackx/packet/VCard;->hasContent()Z
    invoke-static {v4}, Lorg/jivesoftware/smackx/packet/VCard;->access$000(Lorg/jivesoftware/smackx/packet/VCard;)Z

    move-result v4

    new-instance v5, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;

    invoke-direct {v5, p0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;-><init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    invoke-direct {p0, v3, v0, v4, v5}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/util/HashMap;ZLorg/jivesoftware/smackx/packet/VCard$ContentBuilder;)V

    .line 803
    return-void

    .line 790
    :cond_3
    const-string v3, "false"

    goto :goto_0
.end method
