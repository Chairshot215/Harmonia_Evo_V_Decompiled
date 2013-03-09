.class public Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
.super Ljava/lang/Object;
.source "UakAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/htcuserassignkey/UakAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public final actionTag:I

.field public final image:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public mNextAdapter:I

.field public text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V
    .locals 3
    .parameter
    .parameter "pm"
    .parameter "resolveInfo"
    .parameter "actionTag"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 225
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 226
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 229
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 230
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 237
    iput p4, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 238
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;III)V
    .locals 3
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 153
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    iput v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 154
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 155
    if-eq p4, v1, :cond_0

    .line 156
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 160
    :goto_0
    iput p5, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 161
    return-void

    .line 158
    :cond_0
    iput-object v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;IIII)V
    .locals 3
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 163
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    iput v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 164
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 165
    if-eq p4, v1, :cond_0

    .line 166
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 170
    :goto_0
    iput p5, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 171
    iput p6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 172
    return-void

    .line 168
    :cond_0
    iput-object v2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;Ljava/lang/String;III)V
    .locals 2
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "imageResourceId"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 181
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 182
    iput-object p3, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 183
    if-eq p4, v0, :cond_0

    .line 184
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 188
    :goto_0
    iput p5, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 189
    iput p6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 190
    return-void

    .line 186
    :cond_0
    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "icon"
    .parameter "actionTag"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 176
    iput-object p3, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 177
    iput-object p4, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 178
    iput p5, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    const/4 v1, 0x0

    .line 192
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 193
    iput-object p3, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 194
    if-eqz p4, :cond_0

    .line 195
    iput-object p4, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 199
    :goto_0
    iput p5, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 200
    iput p6, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 201
    return-void

    .line 197
    :cond_0
    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/htcuserassignkey/UakAdapter;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter
    .parameter "textResource"
    .parameter "actionTag"

    .prologue
    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->this$0:Lcom/android/settings/htcuserassignkey/UakAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->mNextAdapter:I

    .line 204
    iput-object p2, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 205
    iput-object v1, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 206
    iput p3, p0, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->actionTag:I

    .line 207
    return-void
.end method
