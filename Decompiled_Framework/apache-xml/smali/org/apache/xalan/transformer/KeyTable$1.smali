.class Lorg/apache/xalan/transformer/KeyTable$1;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "KeyTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xalan/transformer/KeyTable;


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/KeyTable;Lorg/apache/xml/dtm/DTMManager;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyTable$1;->this$0:Lorg/apache/xalan/transformer/KeyTable;

    invoke-direct {p0, p2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    return-void
.end method


# virtual methods
.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
