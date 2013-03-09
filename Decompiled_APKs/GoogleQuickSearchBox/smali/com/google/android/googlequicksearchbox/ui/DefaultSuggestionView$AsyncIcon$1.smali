.class Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;
.super Ljava/lang/Object;
.source "DefaultSuggestionView.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

.field final synthetic val$source:Lcom/google/android/googlequicksearchbox/Source;

.field final synthetic val$uniqueIconId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$uniqueIconId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .parameter "icon"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$uniqueIconId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    #getter for: Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->access$100(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->this$1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$uniqueIconId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->val$source:Lcom/google/android/googlequicksearchbox/Source;

    #calls: Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->access$200(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    .line 266
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 257
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;->consume(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
