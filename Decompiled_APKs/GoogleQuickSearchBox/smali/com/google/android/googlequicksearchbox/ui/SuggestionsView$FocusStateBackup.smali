.class Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;
.super Ljava/lang/Object;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusStateBackup"
.end annotation


# instance fields
.field private final mFocusedId:I

.field private final mFocusedIndex:I

.field private final mFocusedItem:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;Lcom/google/android/googlequicksearchbox/ui/SuggestionView;)V
    .locals 2
    .parameter
    .parameter "suggestionView"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->getListItem()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedItem:Ljava/lang/Object;

    .line 169
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->getIndex()I

    move-result v1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedIndex:I

    .line 170
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 171
    .local v0, leaf:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    goto :goto_0
.end method


# virtual methods
.method public restore()V
    .locals 5

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, toFocus:Landroid/view/View;
    if-nez v1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedIndex:I

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->this$0:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 186
    :cond_0
    instance-of v2, v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 187
    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    .line 188
    .local v0, suggestionView:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->getListItem()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedItem:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    if-ltz v2, :cond_1

    .line 191
    iget v2, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->mFocusedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 193
    :cond_1
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 198
    .end local v0           #suggestionView:Lcom/google/android/googlequicksearchbox/ui/SuggestionView;
    :cond_2
    return-void
.end method
