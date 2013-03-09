.class Lcom/android/browser/homepages/Template$ListEntity;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Lcom/android/browser/homepages/Template$Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/homepages/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListEntity"
.end annotation


# instance fields
.field mKey:Ljava/lang/String;

.field mSubTemplate:Lcom/android/browser/homepages/Template;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "subTemplate"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/browser/homepages/Template$ListEntity;->mKey:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/android/browser/homepages/Template;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/android/browser/homepages/Template;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/browser/homepages/Template$1;)V

    iput-object v0, p0, Lcom/android/browser/homepages/Template$ListEntity;->mSubTemplate:Lcom/android/browser/homepages/Template;

    .line 103
    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V
    .locals 2
    .parameter "stream"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/browser/homepages/Template$ListEntity;->mKey:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/android/browser/homepages/Template$EntityData;->getListIterator(Ljava/lang/String;)Lcom/android/browser/homepages/Template$ListEntityIterator;

    move-result-object v0

    .line 108
    .local v0, iter:Lcom/android/browser/homepages/Template$ListEntityIterator;
    invoke-interface {v0}, Lcom/android/browser/homepages/Template$ListEntityIterator;->reset()V

    .line 109
    :goto_0
    invoke-interface {v0}, Lcom/android/browser/homepages/Template$ListEntityIterator;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/browser/homepages/Template$ListEntity;->mSubTemplate:Lcom/android/browser/homepages/Template;

    invoke-virtual {v1, p1, v0}, Lcom/android/browser/homepages/Template;->write(Ljava/io/OutputStream;Lcom/android/browser/homepages/Template$EntityData;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
