<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';
    public $primaryKey = 'id';
    protected $fillable = [
        'parent', 
        'created', 
        'modified',
        'content',
        'pings',
        'creator',
        'fullname',
        'profile_picture_url',
        'created_by_admin',
        'created_by_current_user',
        'upvote_count',
        'user_has_upvoted',
        'is_new'];
    public $incrementing = true;
    public $timestamps = true;
}
