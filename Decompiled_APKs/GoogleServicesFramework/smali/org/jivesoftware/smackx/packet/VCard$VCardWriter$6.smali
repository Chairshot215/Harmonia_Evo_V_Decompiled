.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendFN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 898
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 900
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v0, v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$1600(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$1700(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v1, v1, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smackx/packet/VCard;->access$1600(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v0, v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$1800(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$1700(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v1, v1, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smackx/packet/VCard;->access$1800(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 906
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v0, v0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard;->access$1900(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$1700(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v1, v1, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->this$0:Lorg/jivesoftware/smackx/packet/VCard;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smackx/packet/VCard;->access$1900(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    :cond_2
    return-void
.end method
