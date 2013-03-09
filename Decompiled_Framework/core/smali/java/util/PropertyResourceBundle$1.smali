.class Ljava/util/PropertyResourceBundle$1;
.super Ljava/lang/Object;
.source "PropertyResourceBundle.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/PropertyResourceBundle;->getKeys()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field local:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nextElement:Ljava/lang/String;

.field pEnum:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/PropertyResourceBundle;


# direct methods
.method constructor <init>(Ljava/util/PropertyResourceBundle;)V
    .locals 1

    iput-object p1, p0, Ljava/util/PropertyResourceBundle$1;->this$0:Ljava/util/PropertyResourceBundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/PropertyResourceBundle$1;->this$0:Ljava/util/PropertyResourceBundle;

    #calls: Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;
    invoke-static {v0}, Ljava/util/PropertyResourceBundle;->access$000(Ljava/util/PropertyResourceBundle;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PropertyResourceBundle$1;->local:Ljava/util/Enumeration;

    iget-object v0, p0, Ljava/util/PropertyResourceBundle$1;->this$0:Ljava/util/PropertyResourceBundle;

    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PropertyResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    return-void
.end method

.method private findNext()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Ljava/util/PropertyResourceBundle$1;->nextElement:Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Ljava/util/PropertyResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/PropertyResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/util/PropertyResourceBundle$1;->this$0:Ljava/util/PropertyResourceBundle;

    iget-object v2, v2, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Ljava/util/PropertyResourceBundle$1;->nextElement:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Ljava/util/PropertyResourceBundle$1;->local:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Ljava/util/PropertyResourceBundle$1;->findNext()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/PropertyResourceBundle$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Ljava/util/PropertyResourceBundle$1;->local:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/PropertyResourceBundle$1;->local:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Ljava/util/PropertyResourceBundle$1;->findNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/util/PropertyResourceBundle$1;->nextElement:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/PropertyResourceBundle$1;->nextElement:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/PropertyResourceBundle$1;->pEnum:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method
