.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->write()V
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
    .line 798
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$1;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->buildActualContent()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$100(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)V

    .line 801
    return-void
.end method
