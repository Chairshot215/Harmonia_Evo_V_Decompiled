.class Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory$1;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
.source "DefaultListEntryViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;

.field final synthetic val$specificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory$1;->this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory$1;->val$specificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    invoke-direct {p0, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory$1;->val$specificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
