.class Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

.field final synthetic val$tagFromWebDB:Ljava/lang/String;

.field final synthetic val$valueFromWebDB:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->val$tagFromWebDB:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->val$valueFromWebDB:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->this$1:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->val$tagFromWebDB:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->val$valueFromWebDB:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/TinyWebDB;->GotValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
