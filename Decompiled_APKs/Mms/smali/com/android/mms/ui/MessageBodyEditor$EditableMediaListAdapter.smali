.class Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageBodyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditableMediaListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 166
    .local v0, media:Lcom/android/mms/model/MediaModel;
    const/4 v1, 0x0

    .line 167
    .local v1, view:Landroid/view/View;
    if-nez p2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mFactory:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;
    invoke-static {v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$000(Lcom/android/mms/ui/MessageBodyEditor;)Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->create(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)Lcom/android/mms/view/EditableMediaView;

    move-result-object v1

    .end local v1           #view:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 173
    .restart local v1       #view:Landroid/view/View;
    :goto_0
    if-nez v1, :cond_0

    .line 174
    const-string v2, "MessageBodyEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView is null >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/mms/view/EditableMediaView;

    invoke-interface {v2, v0}, Lcom/android/mms/view/EditableMediaView;->bindTo(Lcom/android/mms/model/MediaModel;)V

    .line 177
    :cond_1
    return-object v1

    .line 170
    :cond_2
    move-object v1, p2

    goto :goto_0
.end method
